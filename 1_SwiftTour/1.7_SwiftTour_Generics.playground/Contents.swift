import UIKit

func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result = [Item]()
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result
}

makeArray(repeating: "knock", numberOfTimes: 4)

// 関連型
enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}

var possibleIntegger: OptionalValue<Int> = .none
possibleIntegger = .some(100)

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

anyCommonElement([1, 2, 3], [3])
//anyCommonElement(["1", "2", "3"], ["3"])

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


