import UIKit

// トランプの話
enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

let ace = Rank.ace
let aceRowValue = ace.rawValue
ace.simpleDescription()

let two = Rank.two
let twoRowValue = two.rawValue

aceRowValue > twoRowValue

// rawValueからRankの取得もできる
if let convertRank = Rank(rawValue: 3) {
    let threeDescription = convertRank.simpleDescription()
    print(threeDescription)
}


enum Suit {
    case spades, hearts, diamonds, clubs
    
    // これをrawValue()的に使えるということ
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
    
    func color() -> String {
        switch self {
        case .spades, .clubs:
            return "black"
        case .hearts, .diamonds:
            return "red"
        }
    }
}

let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
let color = hearts.color()

// サーバーとのやりとりに成功したら2つのStringを、失敗したら1つのStringを、タイムアウトなら何もない
enum ServerResponse {
    case result(String, String)
    case failure(String)
    case long
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese")

switch success {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure... \(message)")
case .long:
    print("time out")
}


struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
    
}

let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()


// https://qiita.com/hachinobu/items/392c96820588d1c03b0c
enum Barcode {
    case upca(Int, Int, Int, Int)
    case qrcode(String)
}

let productBarcode = Barcode.upca(8, 8938, 51294, 3)

if case let Barcode.upca(code) = productBarcode {
    print(code.0)
}







