package Accelerator

import spinal.core._
import spinal.lib._


object Until {

  def zero[T <: Data](gen: T): T = {
    val zero = gen match {
      case _: UInt => U(0, gen.getBitsWidth bits)
      case _: SInt => S(0, gen.getBitsWidth bits)
      case _: SFix => SF(BigDecimal(0), ExpNumber(gen.asInstanceOf[SFix].maxExp), BitCount(gen.asInstanceOf[SFix].bitCount)) /* convert the fixed float */
      case _: Bits => B(0, gen.getBitsWidth bits)
      case _ => B(0, gen.getBitsWidth bits)
    }
    zero.asInstanceOf[T]
  }

  def negone[T <: Data](gen: T): T = {
    val one = gen match {
      case _: SInt => S(-1, gen.getBitsWidth bits)
      case _: SFix => SF(BigDecimal(-1), ExpNumber(gen.asInstanceOf[SFix].maxExp), BitCount(gen.asInstanceOf[SFix].bitCount))
      case _ => U(-1, gen.getBitsWidth bits)
    }
    one.asInstanceOf[T]
  }

  def one[T <: Data](gen: T): T = {
    val one = gen match {
      case _: UInt => U(1, gen.getBitsWidth bits)
      case _: SInt => S(1, gen.getBitsWidth bits)
      case _: SFix => SF(BigDecimal(1), ExpNumber(gen.asInstanceOf[SFix].maxExp), BitCount(gen.asInstanceOf[SFix].bitCount))
      case _ => U(1, gen.getBitsWidth bits)
    }
    one.asInstanceOf[T]
  }

  def clip[T <: Data with Num[T]](value: T, max: BigInt, min: BigInt): T = {
    val clipNum = value match {
      case _: UInt => Mux(value.asInstanceOf[UInt] > U(max), U(max), Mux(value.asInstanceOf[UInt] < min, U(min), value))
      case _: SInt => Mux(value.asInstanceOf[SInt] > S(max), S(max), Mux(value.asInstanceOf[SInt] < min, S(min), value))
      case _ => value
    }
    clipNum.asInstanceOf[T]
  }

  def min[T <: Data](gen: T): BigInt = {
    val min = gen match {
      case _: UInt => BigInt(0)
      case _: SInt => gen.asInstanceOf[SInt].minValue.toBigInt
      case _: SFix => gen.asInstanceOf[SFix].minValue.toBigInt
      case _ => BigInt(0)
    }
    min
  }

  def max[T <: Data](gen: T): BigInt = {
    val max = gen match {
      case _: UInt => gen.asInstanceOf[UInt].maxValue.toBigInt
      case _: SInt => gen.asInstanceOf[SInt].maxValue.toBigInt
      case _: SFix => gen.asInstanceOf[SFix].maxValue.toBigInt
      case _ => gen.asInstanceOf[UInt].maxValue.toBigInt
    }
    max
  }

  def mac[T <: Data with Num[T]](gen: T, m1: T, m2: T, acc: T) = {
    val macValue = (gen, m1, m2, acc) match {
      case _ => m1 * m2 + acc
    }
    macValue
  }

  def upDown[T <: Data with Num[T]](value: T, gen: T) = {
    val maxValue = max(gen)
    val minValue = min(gen)
    val upDownValue = clip(value, maxValue, minValue)
    upDownValue
  }

}
