import Foundation

/*1. Написать функцию, которая ничего не возвращает и принимает только один клоужер, который ничего не принимает и ничего не возвращает . Функция должна просто посчитать от 1 до 10 в цикле и после этого вызвать клоужер. Добавьте print в каждый виток цикла и в клоужер и проследите за очередностью выполнения команд.


func first(f: () -> ()) {
    for i in 1...10 {
        print(i)
        f()
    }
}

print(first{})



2. Используя метод массивов sorted, отсортируйте массив интов по возрастанию и убыванию. Пример показан в методичке.
 
let numbers = [1, 3, 43, 54, 23, 11, 56, 27, 18, 6, 7]


func up(_ nubmer1: Int, _ number2: Int) -> Bool {
    return nubmer1 < number2
}

var upNubmers = numbers.sorted(by: up)


var downNumbers = numbers.sorted(by: { $0 > $1})
var upNumbers = numbers.sorted(by: { $0 < $1})

print(downNumbers)
print(upNumbers)



3. Напишите функцию, которая принимает массив интов и клоужер и возвращает инт. Клоужер должен принимать 2 инта (один опшинал) и возвращать да или нет. В самой функции создайте опшинал переменную. Вы должны пройтись в цикле по массиву интов и сравнивать элементы с переменной используя клоужер. Если клоужер возвращает да, то вы записываете значение массива в переменную. в конце функции возвращайте переменную.
 */

let numbers = [9, 3, 43, 54, 54, 11, 56, 27, 18, 6, 7]

func third(array: [Int], closure: (Int, Int?) -> Bool) -> Int {
    var optionalVar: Int?
    for value in array {
        if closure(value, optionalVar) {
            optionalVar = value
        }
    }
    return optionalVar ?? 0
}

var check = third(array: numbers, closure: { arrayValue, storeValue -> Bool in
    if let storeValue = storeValue {
        if storeValue >= arrayValue {
            return true
        } else {
            return false
        }
    } else {
        return true
    }
})

print(check)

//func test1(closure: @escaping () -> Void) {
//    print("test1")
//    closure()
//}
//
//test1 {
//    print("qwerty")
//}
//
//func test2(closure: () -> Bool) {
//    if closure() {
//        print("test2")
//    }
//}
//
//test2 { () -> Bool in
//    return true
//}
//
//func test3(closure: () -> Int) {
//    print(closure() * 2)
//}
//
//test3 { () -> Int in
//    return 9
//}
//
//func test4(closure: (Int) -> Int) {
//    let array = [1, 2, 3, 4, 5]
//    for value in array {
//        print(closure(value))
//    }
//}
//
//test4 { value in
//    return value + 5
//}

/*
 sorted(array: numbers) { i in
 for value in numbers {
 if value > i{
 return true
 }
 }
 return false
 }
 */
 
