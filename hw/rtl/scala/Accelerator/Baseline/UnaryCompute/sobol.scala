package Accelerator.Baseline.UnaryCompute

import spinal.core._
import spinal.lib._

class sobol(c:config) extends Component {

  val io = new Bundle{
    val enable = in Bool()
    val sobolSeq = out Bits(c.inputWidth bits)
  }

  val dirvec = Vec(Bits(c.inputWidth bits), c.inputWidth)
  val vecIdx = UInt(log2Up(c.inputWidth) bits)

  val cnt = Reg(UInt(c.inputWidth bits)).init(0)
  when(io.enable){
    cnt := cnt + 1
  }

  val inacc = Bits(c.inputWidth bits).noCombLoopCheck()
  val outoh = Bits(c.inputWidth bits)

  inacc(0) := ~cnt(0)
  outoh(0) := ~cnt(0)

  for(i <- 1 until c.inputWidth){
    inacc(i) := inacc(i - 1) | (~cnt(i))
    outoh(i) := inacc(i - 1) ^ inacc(i)
  }

  // val vecIdx = OHToUInt(outoh.asBools)
  val sebolSeq = Reg(Bits(c.inputWidth bits)).init(0)
  when(io.enable){
    sebolSeq := sebolSeq ^ dirvec(vecIdx)
  }

//  for(idx <- 0 until c.arraySize){
//    dirvec(idx) := UIntToOh(idx,width = c.arraySize)
//  }


  if(c.inputWidth == 8){
    dirvec(0) := B"10000000"
    dirvec(1) := B"01000000"
    dirvec(2) := B"00100000"
    dirvec(3) := B"00010000"
    dirvec(4) := B"00001000"
    dirvec(5) := B"00000100"
    dirvec(6) := B"00000010"
    dirvec(7) := B"00000001"
  }else if (c.inputWidth == 16){
    dirvec(0) := B"1000000000000000"
    dirvec(1) := B"0100000000000000"
    dirvec(2) := B"0010000000000000"
    dirvec(3) := B"0001000000000000"
    dirvec(4) := B"0000100000000000"
    dirvec(5) := B"0000010000000000"
    dirvec(6) := B"0000001000000000"
    dirvec(7) := B"0000000100000000"
    dirvec(8) := B"0000000010000000"
    dirvec(9) := B"0000000001000000"
    dirvec(10) := B"0000000000100000"
    dirvec(11) := B"0000000000010000"
    dirvec(12) := B"0000000000001000"
    dirvec(13) := B"0000000000000100"
    dirvec(14) := B"0000000000000010"
    dirvec(15) := B"0000000000000001"
  }


  switch(outoh){
    if(c.inputWidth == 8){
        is(B"00000001"){vecIdx := 0}
        is(B"00000010"){vecIdx := 1}
        is(B"00000100"){vecIdx := 2}
        is(B"00001000"){vecIdx := 3}
        is(B"00010000"){vecIdx := 4}
        is(B"00100000"){vecIdx := 5}
        is(B"01000000"){vecIdx := 6}
        is(B"10000000"){vecIdx := 7}
        default {vecIdx := 0}
    }else if(c.inputWidth == 16){
      is(B"0000000000000001") {vecIdx := 0}
      is(B"0000000000000010") {vecIdx := 1}
      is(B"0000000000000100") {vecIdx := 2}
      is(B"0000000000001000") {vecIdx := 3}
      is(B"0000000000010000") {vecIdx := 4}
      is(B"0000000000100000") {vecIdx := 5}
      is(B"0000000001000000") {vecIdx := 6}
      is(B"0000000010000000") {vecIdx := 7}
      is(B"0000000100000000") {vecIdx := 8}
      is(B"0000001000000000") {vecIdx := 9}
      is(B"0000010000000000") {vecIdx := 10}
      is(B"0000100000000000") {vecIdx := 11}
      is(B"0001000000000000") {vecIdx := 12}
      is(B"0010000000000000") {vecIdx := 13}
      is(B"0100000000000000") {vecIdx := 14}
      is(B"1000000000000000") {vecIdx := 15}
      default {vecIdx := 0}
    }


  }
  io.sobolSeq := sebolSeq
}

object sobol extends App{
  SpinalSystemVerilog(new sobol(config(inputWidth = 16,arraySize = 16, outputWidth = 32)))
}