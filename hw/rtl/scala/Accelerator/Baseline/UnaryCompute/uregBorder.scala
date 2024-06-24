package Accelerator.Baseline.UnaryCompute

import spinal.core._
import spinal.lib._

/* let the src value split and pass out  */

class uregBorder(c:config) extends Component {

  val io = new Bundle{
    val enable = in Bool()
    val clear = in Bool()
    val input = in SInt(c.inputWidth bits)
    val output_sign = out Bool()
    val output_abs = out Bits(c.inputWidth - 1 bits)
  }

  val output_data = Reg(SInt(c.inputWidth bits)).init(0)

  when(io.clear){
    output_data.clearAll()
  }.otherwise{
    when(io.enable){
      output_data := io.input
    }
  }

  val output_data_neg = -output_data
  io.output_sign := output_data.msb
  io.output_abs := Mux(io.output_sign,output_data_neg(output_data_neg.high - 1 downto 0).asBits,output_data(output_data_neg.high - 1 downto 0).asBits)
}

object uregBorder extends App{
  SpinalSystemVerilog(new uregBorder(config()))
}