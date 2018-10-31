//: Playground - noun: a place where people can play
import Foundation

extension Int {
    //1. Создайте расширение для Int со свойствами isNegative, isPositive, которые должны возвращать Bool
    var isNegative: Bool {
        return self < 0
    }

    var isPositive: Bool {
        return self > 0
    }
    
    var isZero: Bool {
        return self == 0
    }
    //2. Добавьте свойство, которое возвращает количество символов в числе
    var symbols: Int {
        return String(self).count
    }
    //3. Добавьте метод, который возвращает символ числа по индексу:
    func symbOfInt(_ index: Int) -> String? {
        let strInt = String(self)
        if index >= strInt.count {
            return nil
        } else {
            let symbolIndex = strInt.index(strInt.startIndex, offsetBy: index)
            return String(strInt[symbolIndex])
        }
    }
}


//1
let a = -8
let b = 11
let c = 0

a.isNegative
b.isPositive
c.isZero

//2

let f = 13541

f.symbols

//3

f.symbOfInt(3)

//4. Добавить стрингу метод truncate, чтобы отрезал лишние символы и, если таковые были, заменял их на троеточие:
//let s = "Hi hi hi"
//s.truncate(4) // Hi h...
//s.truncate(10) // Hi hi hi
extension String {
    func truncate(_ length: Int) -> String {
        let strInt = String(self)
        if strInt.count > length {
            return strInt.prefix(length) + "..."
        } else {
            return self
        }
    }
}
var str = "1234567890"

str.truncate(3)


