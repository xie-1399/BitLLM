package Accelerator.Baseline.UnaryCompute

// inner PE hardware
import spinal.core._
import spinal.lib._

class uSystolicPE(c:config) extends Component {

  val io = new Bundle{
    val mac_done = in Bool()
    val enable_i = in Bool()
    val clear_i = in Bool()
    val enable_w = in Bool()
    val clear_w = in Bool()
    val enable_o = in Bool()
    val clear_o = in Bool()
    val ifm_sign = in Bool()
    val ifm_dff = in Bool()
    val wght_sign = in Bool()
    val randW = in Bits(c.inputWidth - 1 bits)
    val wght_abs = in Bits(c.inputWidth - 1 bits)
    val ofm = in SInt(c.outputWidth bits)

    val mac_done_d = out Bool()
    val enable_i_d = out Bool()
    val clear_i_d = out Bool()
    val enable_w_d = out Bool()
    val clear_w_d = out Bool()
    val enable_o_d = out Bool()
    val clear_o_d = out Bool()
    val ifm_sign_d = out Bool()
    val ifm_dff_d = out Bool()
    val wght_sign_d = out Bool()
    val randW_d = out Bits(c.inputWidth - 1 bits)
    val wght_abs_d = out Bits(c.inputWidth - 1 bits)
    val ofm_d = out SInt(c.outputWidth bits)
  }


  val ireg_inner = new ireg()
  ireg_inner.io.enable := io.enable_i
  ireg_inner.io.clear := io.clear_i
  ireg_inner.io.i_data_sign := io.ifm_sign
  ireg_inner.io.i_data_dff := io.ifm_dff
  io.ifm_sign_d := ireg_inner.io.o_data_sign
  io.ifm_dff_d := ireg_inner.io.o_data_dff

  val wreg_inner = new wreg(c)
  wreg_inner.io.enable := io.enable_w
  wreg_inner.io.clear := io.clear_w
  wreg_inner.io.input_sign := io.wght_sign
  wreg_inner.io.input_abs := io.wght_abs
  io.wght_sign_d := wreg_inner.io.output_sign
  io.wght_abs_d := wreg_inner.io.output_abs

  val umul_inner = new umul(c)
  umul_inner.io.i_bit_i := io.ifm_dff_d
  umul_inner.io.i_randw := io.randW
  umul_inner.io.i_data_w := io.wght_abs_d
  io.randW_d := umul_inner.io.o_randw

  val acc = new accumulate(c)
  acc.io.enable := io.enable_o
  acc.io.clear := io.clear_o
  acc.io.mac_done := io.mac_done_d
  acc.io.sign_activation := io.ifm_sign_d
  acc.io.sign_weight := io.wght_sign_d
  acc.io.prod_bit := umul_inner.io.o_bit
  acc.io.sum_input := io.ofm
  io.ofm_d := acc.io.sum_output

  /* connect others */
  io.enable_i_d := io.enable_i
  io.enable_w_d := io.enable_w
  io.enable_o_d := io.enable_o
  io.clear_i_d := io.clear_i
  io.clear_w_d := io.clear_w
  io.clear_o_d := io.clear_o
  io.mac_done_d := io.mac_done
}

/* pe broadcast*/
class uSystolicPEBorder(c:config) extends Component{
  val io = new Bundle{
      val mac_done = in Bool()
      val enable_i = in Bool()
      val clear_i = in Bool()
      val enable_w = in Bool()
      val clear_w = in Bool()
      val enable_o = in Bool()
      val clear_o = in Bool()
      val ifm = in SInt(c.inputWidth bits)
      val wght_sign = in Bool()
      val wght_abs = in Bits (c.inputWidth - 1 bits)
      val ofm = in SInt(c.outputWidth bits)

      val mac_done_d = out Bool()
      val enable_i_d = out Bool()
      val clear_i_d = out Bool()
      val enable_w_d = out Bool()
      val clear_w_d = out Bool()
      val enable_o_d = out Bool()
      val clear_o_d = out Bool()
      val ifm_sign_d = out Bool()
      val ifm_dff_d = out Bool()
      val wght_sign_d = out Bool()
      val randW_d = out Bits (c.inputWidth - 1 bits)
      val wght_abs_d = out Bits (c.inputWidth - 1 bits)
      val ofm_d = out SInt (c.outputWidth bits)
  }

  val ireg_border = new uregBorder(c)
  ireg_border.io.enable := io.enable_i
  ireg_border.io.clear := io.clear_i
  ireg_border.io.input := io.ifm
  io.ifm_sign_d := ireg_border.io.output_sign

  // io.ifm_dff_d := ireg_border.io.output_sign

  val wreg_border = new wreg(c)
  wreg_border.io.enable := io.enable_w
  wreg_border.io.clear := io.clear_w
  wreg_border.io.input_sign := io.wght_sign
  wreg_border.io.input_abs := io.wght_abs
  io.wght_sign_d := wreg_border.io.output_sign
  io.wght_abs_d := wreg_border.io.output_abs

  val umul_border = new umulBorder(c)
  umul_border.io.init := io.enable_i_d
  umul_border.io.clear := io.clear_i_d
  umul_border.io.i_data_i := ireg_border.io.output_abs
  umul_border.io.i_data_w := io.wght_abs_d
  io.randW_d := umul_border.io.randW
  io.ifm_dff_d := umul_border.io.i_bit_d

  val acc = new accumulate(c)
  acc.io.enable := io.enable_o
  acc.io.clear := io.clear_o
  acc.io.mac_done := io.mac_done_d
  acc.io.sign_activation := io.ifm_sign_d
  acc.io.sign_weight := io.wght_sign_d
  acc.io.prod_bit := umul_border.io.o_bit
  acc.io.sum_input := io.ofm
  io.ofm_d := acc.io.sum_output

  io.enable_i_d := io.enable_i
  io.enable_w_d := io.enable_w
  io.enable_o_d := io.enable_o
  io.clear_i_d := io.clear_i
  io.clear_w_d := io.clear_w
  io.clear_o_d := io.clear_o
  io.mac_done_d := io.mac_done
}

object uSystolicPE extends App{
  SpinalSystemVerilog(new uSystolicPE(config()))
  SpinalSystemVerilog(new uSystolicPEBorder(config()))
}