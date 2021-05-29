let b = 10
var a = 5
a = b

let (x, y) = (1, 2)

let helloWorld = "hello, " + "world"

-9 % 4 // -9 = (4 x -2) + -1

var aa = 1
aa += 2 // 値を返すわけではない
print(aa += 2) // ()を表示する

// タプルは左から比較されていく
(1, "zebra") < (2, "apple")
// 最初が同じだったら、2つ目の項目で比較される
// 1個目じゃ比較できません。2つ目の結果で、このタプル同士の大小を比較します。って感じか。
(3, "apple") < (3, "bird")
(4, "dog") == (4, "dog")
"apple" < "bird"
"aaa" < "aab"
// Stringは昇順に並べて代償を比較できる
// Boolは大小を比較できない

// タプルは7つまで比較できる

let c: String? = "not nil"
c ?? "nil"
c != nil ? c! : "nil"

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}

// これ便利ね
for name in names[2...] {
    print(name)
}

//for name in names[...2] {
//    print(name)
//}

let range = 1..<5
range.contains(9) // false
range.contains(1) // true
range.contains(-2) // true

...5 // PartialRangeThrough<Int>
..<5 // PartialRangeUpTo<Int>
1...5 // ClosedRange<Int>
1..<5 // Range<Int>
// 色んな型があるもんだ


