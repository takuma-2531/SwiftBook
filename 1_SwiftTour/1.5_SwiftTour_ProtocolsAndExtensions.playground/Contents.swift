import UIKit

protocol ExampleProtocol {
    // get ってなんでgetなんだ？
    var simpleDescription: String { get }
    mutating func adjust()
    
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class"
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += " Now 100% adjusted"
    }
    
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription
//a.simpleDescription = "new"
//print(a.simpleDescription)

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
    
}

var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription


extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    
    mutating func adjust() {
        self += 42
    }
    
    mutating func absolute() {
        if self < 0 {
            self = -self
        }
    }
    
}

print(7.simpleDescription)
var seven = -7
seven.absolute()
print(seven)
seven.adjust()
print(seven)

extension Double {
    var absolute: Double {
        if self < 0 {
            return -self
        }
        return self
    }
}

var double: Double = -1.2
print(double.absolute)

// あくまでもExampleProtocol型なので、SimpleClass型のaを代入したとしても、SimpleClass特有のプロパティは使用できない
let protocolValue: ExampleProtocol = a
print(protocolValue.simpleDescription)
//print(protocolValue.anotherProperty)



