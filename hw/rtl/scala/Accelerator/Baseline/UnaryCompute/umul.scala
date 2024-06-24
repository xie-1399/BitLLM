package Accelerator.Baseline.UnaryCompute

import spinal.core._
import spinal.lib._

class umul(c:config) extends Component {

  val io = new Bundle{

    val i_bit_i = in Bool()
    val i_data_w = in Bits(c.inputWidth - 1 bits)
    val i_randw = in Bits(c.inputWidth - 1 bits)
    val o_randw = out Bits(c.inputWidth - 1 bits)
    val o_bit = out Bool()
  }
  val bitW = io.i_data_w.asUInt > io.o_randw.asUInt
  io.o_bit := io.i_bit_i & bitW
  io.o_randw := io.i_randw
}

class umulBorder(c:config) extends Component {

  val io = new Bundle{
    val clear = in Bool()
    val init = in Bool()
    val i_data_i = in Bits(c.inputWidth - 1 bits)
    val i_data_w = in Bits(c.inputWidth - 1 bits)
    val randW = out(Bits(c.inputWidth - 1 bits))
    val o_bit = out Bool()
    val i_bit_d = out Bool()
  }

  val cnt = Reg(UInt(c.inputWidth - 1 bits)).init(0)
  val randW_all = Reg(Bits(c.inputWidth bits)).init(0)
  val bitI = ~(cnt === 0)
  val bitW = io.i_data_w.asUInt > io.randW.asUInt
  val o_bit = bitI && bitW

  when(io.init){
    cnt := io.i_data_i.asUInt
  }.elsewhen(io.clear || ~bitI){
    cnt := 0
  }.otherwise{
    cnt := cnt - 1
  }

  val sobol_w = new sobol(c)

  sobol_w.io.enable := bitI
  randW_all := sobol_w.io.sobolSeq
  io.randW := randW_all(c.inputWidth - 1 downto 1)
  io.o_bit := o_bit
  io.i_bit_d := bitI
}


object umulBorder extends App{
  SpinalSystemVerilog(new umulBorder(config()))
}