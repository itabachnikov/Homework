//: Playground - noun: a place where people can play

import Foundation

//1. Создать энум с шахматными фигруами (король, ферзь и т.д.). Каждая фигура должна иметь цвет белый либо черный, а так же букву и цифру для позиции. Поместите эти фигуры в массив фигур

enum Chess {
    case King(color: Color, vertical: Vertical, horizontal: Horizontal)
    case Queen(color: Color, vertical: Vertical, horizontal: Horizontal)
    case Bishop(color: Color, vertical: Vertical, horizontal: Horizontal)
    case Knight(color: Color, vertical: Vertical, horizontal: Horizontal)
    
    enum Color: String {
        case White = "White"
        case Black = "Black"
    }
    
    enum Vertical: String {
        case one = "1"
        case two = "2"
        case tree = "3"
        case four = "4"
        case five = "5"
        case six = "6"
        case seven = "7"
        case eight = "8"
    }
    
    enum Horizontal: String {
        case A = "A"
        case B = "B"
        case C = "C"
        case D = "D"
        case E = "E"
        case F = "F"
        case G = "G"
        case H = "H"
    }
   
}

let blackKing = Chess.King(color: .Black, vertical: .eight, horizontal: .D)
let whiteQueen = Chess.Queen(color: .White, vertical: .one, horizontal: .E)
let blackBishop = Chess.Bishop(color: .Black, vertical: .eight, horizontal: .C)
let whiteKnight = Chess.Knight(color: .White, vertical: .one, horizontal: .G)

let chessArray = [blackKing, whiteQueen, blackBishop, whiteKnight]

func printChess(figure: Chess) {
   
    switch figure {
    case .King(let color,let vertical, let horizontal):
        print("Name: King\nColor: \(color)\nPoint: \(vertical.rawValue), \(horizontal)")
    case .Queen(let color,let vertical, let horizontal):
        print("Name: Queen\nColor: \(color)\nPoint: \(vertical.rawValue), \(horizontal)")
    case .Bishop(let color,let vertical, let horizontal):
        print("Name: Bishop\nColor: \(color)\nPoint: \(vertical.rawValue), \(horizontal)")
    case .Knight(let color,let vertical, let horizontal):
        print("Name: Knight\nColor: \(color)\nPoint: \(vertical.rawValue), \(horizontal)")
    }

    
}

printChess(figure: whiteKnight)

//3. Используя красивые юникодовые представления шахматных фигур, выведите в консоли вашу доску. Если клетка не содержит фигуры, то используйте белую или черную клетку. Это должна быть отдельная функция, которая распечатывает доску с фигурами (принимает массив фигур и ничего не возвращает)

func chessField(array: [Chess]) {
    switch array {
    case .King(let color,let vertical, let horizontal):
        
    case .Queen(let color,let vertical, let horizontal):

    case .Bishop(let color,let vertical, let horizontal):

    case .Knight(let color,let vertical, let horizontal):

    }
}

func printChessFieldColor(column: Character, row: Int) {
    let characters = "ABCDEFGH".map { String($0) } // ["A", "B" ...]
    if let columnIndex = characters.index(of: String(column)) {
        if (columnIndex + 1) % 2 == row % 2 {
            print("Black")
        } else {
            print("White")
        }
    }
}







