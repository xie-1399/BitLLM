package Accelerator.Baseline.UnaryCompute

/* the usystolic array config*/

case class config(
            inputWidth:Int = 8,
            arraySize:Int = 16,
            outputWidth:Int = 16
            )

object config{

  def tiny() = {
    config(8,8,16)
  }

}
