import UIKit

//let lavel = "The width is "
//let width = 94
//
//let widthLabel = lavel + String(width)


//let apples = 3
//let oranges = 5
//let appleSummary = "I have \(apples) apples."
//let fruitSummary = "I have \(apples + oranges) pieces of fruit"
//
//let quotation = """
//                I said "I have \(apples) apples."
//                And then I said "I have \(apples + oranges) pieces of fruit."
//                """
//
//var shoppingList = ["catfish", "water", "tulips"]
//shoppingList[1] = "bottle of water"
////print(shoppingList)
//
//var occupations = [
//    "Malcolm": "Captain",
//    "Kaylee": "Mechanic"
//]
//// addition
//occupations["Jayne"] = "Public Relations"
//// 変更
//occupations["Kaylee"] = "Police"
//print(occupations)
//
//shoppingList.append("blue paint")
//print(shoppingList)
//
//let emptyArray = [String]()
//let emptyDictionary = [String: Float]()
//
//shoppingList = []
//occupations = [:]


//let individualScores = [75, 43, 103, 87, 12]
//var teamScore = 0
//for score in individualScores {
//    if score > 50 {
//        teamScore += 3
//    } else {
//        teamScore += 1
//    }
//}
//
//print(teamScore)
//
//var optionalString: String? = "Hello"
//print(optionalString == nil)
//
//var optionalName: String? = "John Appleseed"
//var greeting = "Hello!"
//
//if let name = optionalName {
//    greeting = "Hello, \(name)"
//} else {
//    greeting = "No person"
//}


//let nickname: String? = nil
//let fullname: String = "John Appleseed"
//let informalGreeding = "Hi \(nickname ?? fullname)"


//let vegetable = "red pepper"
//switch vegetable {
//case "celery":
//    print("Add some raisins and make ants on a log.")
//case "cucumber", "watercress":
//    print("That would make a good tea sandwich.")
//case let x where x.hasSuffix("pepper"):
//    print("Is it a spicy \(x)?")
//default:
//    print("Everything tastes good in soup.")
//}


//let interestingNumbers = [
//    "Prime": [2, 3, 5, 7, 11, 13],
//    "Fibonacci": [1, 1, 2, 3, 5, 8],
//    "Square": [1, 4, 9, 16, 25]
//]
//var largest = 0
//var largestName = ""
//for (name, numbers) in interestingNumbers {
//    for number in numbers {
//        if number > largest {
//            largest = number
//            largestName = name
////            print("\(largestName):\(largest)")
////            print(largest)
//        }
//    }
//}
//print("\(largestName):\(largest)")


var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)

var total = 0
for i in 0..<4 {
    total += i
}
print(total)
