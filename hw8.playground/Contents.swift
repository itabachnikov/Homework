//: Playground - noun: a place where people can play

import Foundation

/*
 1. Создайте функцию, котороя принимает 2 параметра: символ ch и количество повторений n и
 выводит в консоль строку, состояющую из n символов ch
 */

func characterInString(character: Character, n: Int) {
    var string = ""
    for _ in 1...n {
        string += String(character)
    }
    print(string)
}

characterInString(character: "A", n: 5)

/*
 Представьте шахматную доску
 Создайте функцию printChessFieldColor(horizontal: Character, vertical: Int) с двумя параметрами: буква (horizontal) от A до H, и цифра (vertical) от 1 до 8
 - функция должна выводить цвет поля по переданным координатам
 - реализуйте в теле функции "защиту от дурака" - проверку параметров на валидность
 */

func printChessFieldColor(horizontal: Character, vertical: Int) {
    let horizontalArray = ["A", "B", "C", "D", "E", "F", "G", "H"]
    let verticalArray = [1, 2, 3, 4, 5, 6, 7, 8]
    
    var horizontalIndex = [Int]()
    var verticalIndex = [Int]()
    
    for index in 1...horizontalArray.count {
        let a = index % 2
        if a == 0 {
            horizontalIndex.append(0)
        } else {
            horizontalIndex.append(1)
        }
    }
    
    for index in 1...verticalArray.count {
        let a = index % 2
        if a == 0 {
            verticalIndex.append(0)
        } else {
            verticalIndex.append(1)
        }
    }
    
    print(horizontalIndex)
    print(verticalIndex)

    if horizontalIndex == verticalIndex {
        print("Black")
    } else {
        print("White")
    }
    }



printChessFieldColor(horizontal: "B", vertical: 3)
