let b = 10
var a = 5
a = b

let (x, y) = (1, 2)

let helloWorld = "hello, " + "world"

-9 % 4 // -1

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


