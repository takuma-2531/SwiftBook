import UIKit

//enum Weekday: String {
//    case Monday
//    case Tuesday
//    case Wednesday
//    case Thursday
//    case Friday
//    case Saturday
//    case Sunday
//}

//func greet(person: String, day: String) -> String {
//    return "Hello \(person), today is \(day)."
//}
//greet(person: "Bob", day: "Tuesday")
//
//func greet(_ person: String, on day: String) -> String {
//    return "Hello \(person), today is \(day)."
//}
//greet("John", on: "Wednesday")


//func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
//    var min = scores[0]
//    var max = scores[0]
//    var sum = 0
//
//    for score in scores {
//        if score > max {
//            max = score
//        } else if score < min {
//            min = score
//        }
//        sum += score
//    }
//
//    return (min, max, sum)
//}
//
//let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
//print(statistics.sum)
//print(statistics.2)
//
//// 辞書とタプルが混同しがち
//var fruits = ["apple": "りんご", "orange": "オレンジ", "grape": "グレープ"]
//fruits["melon"] = "メロン"
//print(fruits)
//
//
//func returnFifteen() -> Int {
//    var y = 10
//    func add() {
//        y += 5
//    }
//
//    add()
//    return y
//}
//returnFifteen()

// 引数：Void、返り値：((Int) -> Int)
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
// これはincrementにaddOne関数を代入しているだけ
// 関数が関数を返している
var increment = makeIncrementer()
// addOne関数の引数に7を渡している
// 実質addOne関数しか動かしていない
increment(7)
increment(99)


// 自分でこれが有用な状況を作れればサクッと理解できるんだろうな
// とある関数(condition)の条件を満たす数値が一つでもあればtrueを返す関数
// conditionは自由に選択可能
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    // [20, 19, 7, 12]を回している
    for item in list {
        // lessThanTenの引数にそれぞれの数値が入る
        // 1個でも10より小さい数字があったらtrueを返す
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

func moreThanHundred(number: Int) -> Bool {
    return 100 <= number
}

var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)
// 後ろに(number:)ついてても問題なく動く
hasAnyMatches(list: numbers, condition: moreThanHundred(number:))


numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

numbers.map({ (number: Int) -> Int in
    if number % 2 == 1 {
        return 0
    }
    return number
})

let mappedNumbers = numbers.map({ number in 3 * number})
print(mappedNumbers)

// trueだったらそのまま、falseだったら入れ替える
// 全てがtrueになるまで繰り返し実行しているようだ
let sortedNumbers = numbers.sorted { $0 < $1 }
print(sortedNumbers)

