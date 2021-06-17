import UIKit

let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")

let minutes = 60
for tickMark in 0..<minutes {
    print(tickMark, terminator: ",")
}
print("")

let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    print(tickMark, terminator: ",")
}
print("")

let hours = 12
let hourInterval = 3
for tickMark in stride(from: 3, through: hours, by: hourInterval) {
    print(tickMark, terminator: ",")
}
print("")



let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)

board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08

var square = 0
var diceRoll = 0

//while square < finalSquare {
//    diceRoll += 1
//    if diceRoll == 7 { diceRoll = 1 }
//    square += diceRoll
//    if square < board.count {
//        square += board[square]
//    }
//}
//print("Game over!")

repeat {
    square += board[square]
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    square += diceRoll
} while square < finalSquare

print("Game over!")



