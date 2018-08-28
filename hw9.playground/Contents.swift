import Foundation
/*
 Представьте шахматную доску
 Создайте функцию printChessFieldColor(horizontal: Character, vertical: Int) с двумя параметрами: буква (horizontal) от A до H, и цифра (vertical) от 1 до 8
 - функция должна выводить цвет поля по переданным координатам
 - реализуйте в теле функции "защиту от дурака" - проверку параметров на валидность
 */

func printChessFieldColor(horizontal: Character, vertical: Int) {
    let horizontalArray = ["A", "B", "C", "D", "E", "F", "G", "H"]
    let verticalArray = [1, 2, 3, 4, 5, 6, 7, 8]
    
    var horizontalIndex = 0
    var verticalIndex = 0
    
    for (index, value) in horizontalArray.enumerated() {
        if String(horizontal) == value {
            horizontalIndex += index
        }
}



printChessFieldColor(horizontal: "B", vertical: 3)
