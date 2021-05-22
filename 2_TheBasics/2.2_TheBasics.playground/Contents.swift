// Error Handling
// OptionalとError Handlingが対比されるわけか

func canThrowAnError() throws {
    
}

do {
    try canThrowAnError()
} catch {
    
}


// Assertions and Preconditions
let age = 3
//assert(age >= 0, "A person's age can't be less than zero.")

if age > 10 {
    print("You can ride the roller-coaster")
} else if age >= 0 {
    print("You can ride")
} else {
    assertionFailure("A person's age can't be less than zero")
}

let index = 3
precondition(index > 0, "Index must be greater than zero")

// スタブ、ドライバ
