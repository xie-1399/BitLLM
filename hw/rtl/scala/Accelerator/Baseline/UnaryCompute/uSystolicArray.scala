package Accelerator.Baseline.UnaryCompute

// the baseline is from the state-of-art paper : uSystolic: Byte-Crawling Unary Systolic Array


import spinal.core._
import spinal.lib._


class uSystolicArray(c:config) extends Component {

  val io = new Bundle{
    val enable_i = in Bits(c.arraySize bits)
    val clear_i = in Bits(c.arraySize bits)
    val mac_done = in Bits(c.arraySize bits)
    val enable_w = in Bits (c.arraySize bits)
    val clear_w = in Bits (c.arraySize bits)
    val enable_o = in Bits (c.arraySize bits)
    val clear_o = in Bits (c.arraySize bits)

    val ifm = in Vec(SInt(c.inputWidth bits),c.arraySize)
    val wght_sign = in SInt(c.arraySize bits)
    val wght_abs = in Vec(SInt(c.inputWidth - 1 bits),c.arraySize)
    val ofm = out(Vec(SInt(c.outputWidth bits),c.arraySize))
  }

  val enable_i_x = Vec(Bits(c.arraySize + 1 bits),c.arraySize).noCombLoopCheck()
  val clear_i_x = Vec(Bits(c.arraySize + 1 bits),c.arraySize).noCombLoopCheck()
  val mac_done_x = Vec(Bits(c.arraySize + 1 bits),c.arraySize).noCombLoopCheck()
  val enable_w_x = Vec(Bits(c.arraySize + 1 bits),c.arraySize).noCombLoopCheck()
  val clear_w_x = Vec(Bits(c.arraySize + 1 bits),c.arraySize).noCombLoopCheck()
  val enable_o_x  = Vec(Bits(c.arraySize + 1 bits),c.arraySize).noCombLoopCheck()
  val clear_o_x = Vec(Bits(c.arraySize + 1 bits),c.arraySize).noCombLoopCheck()

  val ifm_sign_x = Array.fill(c.arraySize){Array.fill(c.arraySize + 1){Bool()}}
  val ifm_dff_x = Array.fill(c.arraySize){Array.fill(c.arraySize + 1){Bool()}}
  val wght_sign_x = Array.fill(c.arraySize){Array.fill(c.arraySize + 1){Bool()}}

  val wght_abs_x = Array.fill(c.arraySize){Array.fill(c.arraySize + 1){Bits(c.inputWidth - 1 bits)}}
  val randW_x = Array.fill(c.arraySize){Array.fill(c.arraySize + 1){Bits(c.inputWidth - 1 bits)}}
  val ofm_x = Array.fill(c.arraySize){Array.fill(c.arraySize + 1){SInt(c.outputWidth bits)}}

  for(idx <- 0 until c.arraySize){
    enable_i_x(idx)(0) := io.enable_i(idx)
    clear_i_x(idx)(0) := io.clear_i(idx)
    mac_done_x(idx)(0) := io.mac_done(idx)

    enable_w_x(idx)(0) := io.enable_w(idx)
    clear_w_x(idx)(0) := io.clear_w(idx)
    wght_sign_x(idx)(0) := io.wght_sign(idx)
    wght_abs_x(idx)(0) := io.wght_abs(idx).asBits

    enable_o_x(idx)(c.arraySize) := io.enable_o(idx)
    clear_o_x(idx)(c.arraySize) := io.clear_o(idx)
    io.ofm(idx) := ofm_x(idx)(0)
    ofm_x(idx)(c.arraySize) := 0
  }

  /* inner PE connect*/
  for(idx <- 0 until c.arraySize){

    val border = new uSystolicPEBorder(c)
    border.io.mac_done := mac_done_x(idx)(0)
    border.io.enable_i := enable_i_x(idx)(0)
    border.io.clear_i := clear_i_x(idx)(0)
    border.io.ifm := io.ifm(idx)
    mac_done_x(idx)(1) := border.io.mac_done_d
    enable_i_x(idx)(1) := border.io.enable_i_d
    clear_i_x(idx)(1) := border.io.clear_i_d
    ifm_sign_x(idx)(1) := border.io.ifm_sign_d
    ifm_dff_x(idx)(1) := border.io.ifm_dff_d

    border.io.enable_w := enable_w_x(0)(idx)
    border.io.clear_w := clear_w_x(0)(idx)
    border.io.wght_sign := wght_sign_x(0)(idx)
    border.io.wght_abs := wght_abs_x(0)(idx)
    enable_w_x(0)(idx + 1):= border.io.enable_w_d
    clear_w_x(0)(idx + 1):= border.io.clear_w_d
    wght_sign_x(0)(idx + 1) := border.io.wght_sign_d
    wght_abs_x(0)(idx + 1) := border.io.wght_abs_d

    border.io.enable_o := enable_o_x(0)(idx + 1)
    border.io.clear_o := clear_o_x(0)(idx + 1)
    border.io.ofm := ofm_x(0)(idx + 1)
    enable_o_x(0)(idx) := border.io.enable_o_d
    clear_o_x(0)(idx) := border.io.clear_o_d
    ofm_x(0)(idx) := border.io.ofm_d
    randW_x(idx)(1) := border.io.randW_d

    for(w <- 1 until c.arraySize){
      val pe = new uSystolicPE(c)

      pe.io.mac_done := mac_done_x(idx)(w)
      pe.io.enable_i := enable_i_x(idx)(w)
      pe.io.clear_i := clear_i_x(idx)(w)
      pe.io.ifm_sign := ifm_sign_x(idx)(w)
      pe.io.ifm_dff := ifm_dff_x(idx)(w)
      mac_done_x(idx)(w + 1) := pe.io.mac_done_d
      enable_i_x(idx)(w + 1) := pe.io.enable_i_d
      clear_i_x(idx)(w + 1) := pe.io.clear_i_d
      ifm_sign_x(idx)(w + 1) := pe.io.ifm_sign_d
      ifm_dff_x(idx)(w + 1) := pe.io.ifm_dff_d

      pe.io.enable_w := enable_w_x(w)(idx)
      pe.io.clear_w := clear_w_x(w)(idx)
      pe.io.wght_sign := wght_sign_x(w)(idx)
      pe.io.wght_abs := wght_abs_x(w)(idx)
      enable_w_x(w)(idx + 1) := pe.io.enable_w_d
      clear_w_x(w)(idx + 1) := pe.io.clear_w_d
      wght_sign_x(w)(idx + 1) := pe.io.wght_sign_d
      wght_abs_x(w)(idx + 1) := pe.io.wght_abs_d

      pe.io.enable_o := enable_o_x(w)(idx + 1)
      pe.io.clear_o := clear_o_x(w)(idx + 1)
      pe.io.ofm := ofm_x(w)(idx + 1)

      enable_o_x(w)(idx) := pe.io.enable_o_d
      clear_o_x(w)(idx) := pe.io.clear_o_d
      ofm_x(w)(idx) := pe.io.ofm_d
      pe.io.randW := randW_x(idx)(w)
      randW_x(idx)(w + 1) := pe.io.randW_d
    }
  }

}

object uSystolicArray extends App{
  // SpinalSystemVerilog(new uSystolicArray(config(inputWidth = 8,arraySize = 16, outputWidth = 16)))

  // SpinalSystemVerilog(new uSystolicArray(config(inputWidth = 8,arraySize = 32, outputWidth = 16)))

  // SpinalSystemVerilog(new uSystolicArray(config(inputWidth = 8,arraySize = 64, outputWidth = 16)))

  // SpinalSystemVerilog(new uSystolicArray(config(inputWidth = 16,arraySize = 16, outputWidth = 32)))

  // SpinalSystemVerilog(new uSystolicArray(config(inputWidth = 16,arraySize = 32, outputWidth = 32)))

  // SpinalSystemVerilog(new uSystolicArray(config(inputWidth = 16,arraySize = 64, outputWidth = 32)))
}
