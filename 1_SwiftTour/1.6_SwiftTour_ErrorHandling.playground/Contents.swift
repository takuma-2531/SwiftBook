import UIKit

enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

enum AnothreError: Error {
    case anotherError
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    } else if printerName == "Fire" {
        throw PrinterError.onFire
    } else if printerName == "next room printer" {
        throw AnothreError.anotherError
    }
    return "Job sent"
}

do {
    let printerResponse = try send(job: 1040, toPrinter: "Fire")
    print(printerResponse)
} catch {
    print(error)
}

do {
    let printerResponse = try send(job: 1440, toPrinter: "next room printer")
    print(printerResponse)
} catch PrinterError.onFire {
    print("I'll just put this over here, with the rest of the fire")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError)")
} catch {
    print(error)
}

let printerSuccess = try? send(job: 1884, toPrinter: "Mergethaler")
let printerFailure = try? send(job: 1885, toPrinter: "Never Has Toner")


// deferよくわからん　復習
var fridgeIsOpen = false
var fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }
    
    let result = fridgeContent.contains(food)
    return result
}

fridgeContains("banana")
print(fridgeIsOpen)
