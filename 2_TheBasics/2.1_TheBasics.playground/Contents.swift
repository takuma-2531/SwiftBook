import UIKit

let minValue = UInt8.min
let maxValue = UInt8.max

let minU16 = UInt16.min
let maxU16 = UInt16.max

let min16 = Int16.min
let max16 = Int16.max

let min64 = Int64.min
let max64 = Int64.max

let min = Int.min
let max = Int.max

print(pow(2,16))

let a = 1.25e-2
let hex = 0xFp2 // 15 x 2^2 = 60

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

let paddedDouble = 000123.456
let oneMillion = 1_000_00_0_12 // _をどこに入れようと問題ない
let justOverOneMillion = 1_000_000.000_000_1



typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.max

struct A {
  static var a = "a"
  var b = "b"
}

typealias aaa = A
aaa.a
let test: aaa = aaa.init()


