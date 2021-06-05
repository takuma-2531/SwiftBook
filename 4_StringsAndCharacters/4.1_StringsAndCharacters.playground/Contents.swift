print("aa\taaa\naa\rvvv")
//  \n と \r は改行で同じか？

// 一個エスケープしておけばOK
let threeDoubleQuotationMarks = """
Escaping the first quotation mark \"""
Escaping all three quotation marks \"\"\"
"""

print(threeDoubleQuotationMarks)

// どういう時に使うんだろ？
print(#"Line 1\nLine 2"#)
print("Line 1\nLine 2")
print(#"Line 1\#nLine 2"#)

// これすご
for character in "Dog!🐶" {
    print(character)
}

let enclosedEAcute: Character = "\u{E9}\u{20DD}"

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)] // offsetBy: -1
greeting[greeting.index(after: greeting.startIndex)] // offsetBy: 1
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]

let greeting2 = "Hello, world!"
let index2 = greeting2.firstIndex(of: ",") ?? greeting2.endIndex
let beginning = greeting2[..<index2]

let newString = String(beginning)

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1") {
        act1SceneCount += 1
    }
}

print("There are \(act1SceneCount) scenes in Act 1")

var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        mansionCount += 1
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        cellCount += 1
    }
}

print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")

