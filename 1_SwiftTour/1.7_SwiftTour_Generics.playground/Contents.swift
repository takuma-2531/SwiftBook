import UIKit

func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result = [Item]()
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result
}

makeArray(repeating: "knock", numberOfTimes: 4)

// 関連型（Associated Value）
enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}

// enumの関連型の中身を取り出すのはswitchを使わないとできない？
// https://qiita.com/hachinobu/items/392c96820588d1c03b0c
// こんな感じでいけそう
var possibleIntegger: OptionalValue<Int> = .none
possibleIntegger = .some(100)

// 同じ要素があればture、なければfalse
func anyCommonElement<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
where T.Element: Equatable, T.Element == U.Element {
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}

// true
anyCommonElement([1, 2, 3], [3])
//anyCommonElement(["1", "2", "3"], ["3"])

// 引数に共通しているものを配列に返す
func anyCommonElementArray<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> [T.Element]
where T.Element: Equatable, T.Element == U.Element {
    var element = [T.Element]()
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                element.append(lhsItem)
            }
        }
    }
    return element
}

// [2, 4, 6]
anyCommonElementArray([1, 2, 3, 4, 5, 6], [2, 4, 6, 8, 10])


// https://qiita.com/a-beco/items/2c0432217bbf41ee54e3

struct CountUp: Sequence, IteratorProtocol {
    private var count = 0
    mutating func next() -> Int? {
        defer { count += 1 }
        return count <= 100 ? count : nil
    }
}

// ちょっと理解が追いつかないが、Iteratorがなんか役に立っている
// 何が起こっているかは分かる
for i in CountUp() {
    print("\(i)")
}


