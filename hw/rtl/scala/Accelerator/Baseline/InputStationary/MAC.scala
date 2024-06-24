package Accelerator.Baseline.InputStationary

/**
 * the mac unit builds on to support the input stationary
 */

import spinal.core._
import spinal.lib._
import Accelerator.Until._

class MAC[T <: Data with Num[T]](gen:HardType[T],clip:Boolean = true,name:String = "") extends Component {

  val io = new Bundle{
    val load = in Bool()
    val mulInput = in(gen())
    val addInput = in(gen())

    val passthrough = out(gen())
    val macOut = out(gen)
  }

  val activation = Reg(gen()).init(zero(gen.craft())).setName(name + "inner_activation")
  val macOut = Reg(gen()).init(zero(gen.craft())).setName(name + "inner_macOut")

  io.passthrough := RegNext(io.mulInput).init(zero(gen.craft()))

  when(io.load) {
    /* load the activation */
    activation := io.addInput
    io.macOut := activation
  }.otherwise {
    val macTemp = if (clip) {
      upDown(mac(gen.craft(), io.mulInput, activation, io.addInput), gen()).resized /* clip the value */
    } else {
      mac(gen.craft(), io.mulInput, activation, io.addInput).resized /* just overflow resize */
    }
    macOut := macTemp
    io.macOut := macOut
  }
}