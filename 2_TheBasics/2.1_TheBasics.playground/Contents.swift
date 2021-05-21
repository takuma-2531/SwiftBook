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


// タプル

let http404Error = (404, "Not Found")
// こんなことできるんかい
let (statusCode, statusMessage) = http404Error
print(statusCode) // 404
print(statusMessage) // Not Found

let (justTheStatusCode, _) = http404Error
print(justTheStatusCode) // 404

print(http404Error.0) // 404
print(http404Error.1) // Not Found


let http200Status = (statusCode: 200, description: "OK")
print(http200Status.statusCode) // 200
print(http200Status.0) //200
print(http200Status.description) // OK


// Optional
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

var serverResponseCode: Int? = 404
serverResponseCode = nil

var surveyAnswer: String? // nil

if convertedNumber != nil {
    print("convertedNumber contains some interger value")
    print("value of \(convertedNumber!)")
}


// Optional Binding
// これ、変数にしたかったらvarにすれば良いんだって、知らんかった。どこで使うんかな？
if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("couldn't be converted")
}


if let firstNumber = Int("4"), let secondNumber = Int("42"),
   firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}

if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}


let possibleString: String? = "An optional string."
let forceString: String = possibleString!

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString
let optionalString = assumedString // String?型になる

// 暗黙的にラップされていないオプション値を使用する場合、Swiftは最初にそれを通常のオプション値として使用しようとします。
// オプションとして使用できない場合、Swiftは値を強制的にアンラップします。

if assumedString != nil {
  print(assumedString!)
}

if let definiteString = assumedString {
  print(definiteString)
}



