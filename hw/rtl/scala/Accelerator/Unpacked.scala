package Accelerator

import spinal.core._
import spinal.lib._
import spinal.core.sim._
import scala.math.pow

/* The Unpacked module will fetch the 1.58 bit weight from the DRAM */
/* the output likely the Vector  */

case class UnpackOut() extends Bundle with IMasterSlave {
  val signals = Bits(5 bits)
  val values = Bits(5 bits)
  override def asMaster(): Unit = {
    out(signals,values)
  }
}

class Unpacked(dataWidth:Int = 64) extends Component {
  val bytes = dataWidth / 8
  val table_num = dataWidth / 8
  val depth = pow(3,5).toInt /* is the 3 ^ 5 = 243*/
  val unpackbits = 10

  val io = new Bundle{
    val weights = slave Stream Bits(dataWidth bits)
    val weights_unpack = master Stream Vec(UnpackOut(),bytes)
    val loadLut = slave Stream Bits(unpackbits bits)
  }

    val loadFinish = RegInit(False).simPublic()
    val tables = Array.fill(table_num){Mem(Bits(10 bits),depth)}
    tables.foreach(_.simPublic())
    // tables.foreach(_.readWriteSyncPort())
    io.loadLut.ready := !io.weights.valid
    val indices = io.weights.payload.subdivideIn(8 bits)

    val load = new Area {
      val loadCounter = Counter(depth)
      when(io.loadLut.fire){loadCounter.increment()}
      tables.foreach{
        mem =>
          mem.write(loadCounter.value,io.loadLut.payload.asBits,enable = io.loadLut.fire)
      }
      when(loadCounter.willOverflow){loadFinish := True}
    }

    io.weights_unpack.valid := loadFinish && RegNext(io.weights.valid).init(False)
    io.weights.ready := io.weights_unpack.ready && loadFinish
    io.weights_unpack.payload.zipWithIndex.foreach{
      w =>
        w._1.assignFromBits(tables(w._2).readSync(indices(w._2).asUInt,enable = io.weights.fire))
    }
  assert(io.loadLut.valid && io.weights.valid,"the unpack and load can not be happen at the same time !!!")
}


object Unpacked extends App{
  SpinalSystemVerilog(new Unpacked())
}