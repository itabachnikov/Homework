//: Playground - noun: a place where people can play
import Foundation
/*
 У вас есть имя, отчество и фамилия студента (русские буквы).
 Если имя начинается с А или О, то обращайтесь к студенту по имени.
 Если же нет, но в свою очередь отчество начинается на В или Д, то обращайтесь к нему по имени и отчеству.
 Если же опять нет, то в случае, если фамилия начинается с Е или З, то обращайтесь к нему только по фамилии.
 В противном случае обращайтесь к нему по полному имени.
 */

let name = "Андрей"
let middleName = "Владислаович"
let surname = "Евклидов"

let nameRule = ["А", "О"]
let middleNameRule = ["В", "Д"]
let surnameRule = ["Е", "З"]


let fullName = (name, middleName, surname)

switch fullName {
    
    case (name, _, _) where nameRule.contains(String(name.prefix(1))):
        print(name)
    
    case (_, middleName, _) where middleNameRule.contains(String(middleName.prefix(1))):
        print("\(name) \(middleName)")
    
    case (_, _, surname) where surnameRule.contains(String(surname.prefix(1))):
        print(surname)
    
    default:   print("\(name) \(middleName) \(surname)")
}

/*
 2. Представьте что вы играете в морской бои и у вас осталось некоторое количество кораблей на поле 10Х10 (можно буквы и цифры, а можно только цифры). Вы должны создать свитч, который примет тюпл с координатой и выдаст один из вариантов: мимо, ранил, убил.
 */

let tuple = ("B", 1...11)

switch tuple {
    
case ("B", 2):
    print("kill")
    
case ("A", 1...4):
    print("wounded")
default:
    print("miss")
}
