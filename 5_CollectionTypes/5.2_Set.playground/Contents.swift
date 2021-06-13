import UIKit

var letters = Set<Character>()
print("letter is of type Set<Character> with \(letters.count) items.")

letters.insert("a")
letters = []

var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]
print("I have \(favoriteGenres.count) favorite music genres.")

if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")
} else {
    print("I have particular music preferences.")
}

favoriteGenres.insert("Jazz")

if let removedGenre = favoriteGenres.remove("Rock") {
    print("\(removedGenre)? I'm over it.")
} else {
    print("I never much cared for that.")
}

if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}

for genre in favoriteGenres {
    print("\(genre)")
}

for genre in favoriteGenres.sorted() {
    print(genre)
}

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let evenDigitsArray = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
oddDigits.union(evenDigitsArray).sorted() // Array相手でもいける
oddDigits.intersection(evenDigits).sorted()
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()

let houseAnimals: Set = ["dog", "cat"]
let farmAnimals: Set = ["cow", "chicken", "shipe", "dog", "cat"] // spell...
let cityAnimals: Set = ["bird", "rat"]

houseAnimals.isSubset(of: farmAnimals) // true
farmAnimals.isSuperset(of: houseAnimals) // true
farmAnimals.isDisjoint(with: cityAnimals) // true

// Strictが入っていると、一致するものはfalseを返す
houseAnimals.isStrictSubset(of: houseAnimals) // false
houseAnimals.isStrictSubset(of: farmAnimals) // true
houseAnimals.isStrictSuperset(of: farmAnimals) // false





