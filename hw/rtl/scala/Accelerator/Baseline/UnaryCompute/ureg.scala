package Accelerator.Baseline.UnaryCompute

// the ureg splits the value and sign

import spinal.core._
import spinal.lib._

class wreg(c:config) extends Component {

  val io = new Bundle{
    val enable = in Bool()
    val clear = in Bool()
    val input_abs = in (Bits(c.inputWidth - 1 bits))
    val input_sign = in Bool()

    val output_abs = out (Bits(c.inputWidth - 1 bits))
    val output_sign = out Bool()
  }

  val output_abs = Reg(Bits(c.inputWidth - 1 bits)).init(0)
  val output_sign = RegInit(False)

  when(io.clear){
    output_abs.clearAll()
    output_sign.clear()
  }.otherwise{
    when(io.enable){
      output_sign := io.input_sign
      output_abs := io.input_abs
    }
  }

  io.output_abs := output_abs
  io.output_sign := output_sign
}

class ireg() extends Component{
  val io = new Bundle {
    val enable = in Bool()
    val clear = in Bool()
    val i_data_sign = in Bool()
    val i_data_dff = in Bool()

    val o_data_sign = out Bool()
    val o_data_dff = out Bool()
  }

  val o_data_sign = RegInit(False)
  val o_data_dff = RegInit(False)

  when(io.clear) {
    o_data_dff.clearAll()
    o_data_sign.clear()
  }.otherwise {
    when(io.enable) {
      o_data_sign := io.i_data_sign
      o_data_dff := io.i_data_dff
    }
  }

  io.o_data_dff := o_data_dff
  io.o_data_sign := o_data_sign
}


object ureg extends App{
  SpinalSystemVerilog(new ireg())
  SpinalSystemVerilog(new wreg(c = config()))
}