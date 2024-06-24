package Accelerator.Baseline.UnaryCompute

import spinal.core._
import spinal.lib._
import Accelerator.Until._

class accumulate(c:config) extends Component {

  val io = new Bundle{
    val enable = in Bool()
    val clear = in Bool()
    val mac_done = in Bool()
    val sign_activation = in Bool()
    val sign_weight = in Bool()
    val sum_input = in(SInt(c.outputWidth bits))
    val sum_output = out(SInt(c.outputWidth bits))
    val prod_bit = in Bool()
  }

  val neg = io.sign_weight ^ io.sign_activation //xor signal
  val prod = Mux(io.prod_bit,Mux(neg,S(-1,c.outputWidth bits),S(1,c.outputWidth bits)),S(0,c.outputWidth bits))  /* 0 +1 -1*/
  val sum_o = Reg(SInt(c.outputWidth bits)).init(0)

  when(io.clear){
    sum_o.clearAll()
  }.otherwise{
    when(io.enable){
      /* no clip and overflow control */
      sum_o := Mux(io.mac_done,io.sum_input + sum_o, sum_o + prod)
    }
  }

  io.sum_output := sum_o
}

object accumulate extends App{
  SpinalSystemVerilog(new accumulate(config()))
}