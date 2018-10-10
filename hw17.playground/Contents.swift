//Task 1.
//Создать класс Rectangle, у которого будут свойства Длина и Ширина, реализовать два инициализатора, один основной, второй вспомогательный, основной должен принимать значения длины и ширины, вспомогательный должен принимать значение только одно стороны, что бы в итоге инициализировался квадрат

class Rectangle {
    let hight: Int
    let weight: Int
    
    init(hight: Int, weight: Int) {
        self.hight = hight
        self.weight = weight
    }
    
    convenience init(hight: Int) {
        self.init(hight: hight, weight: hight)
    }
}

let task1 = Rectangle(hight: 8)

//Task 2.
//Создать класс Человек с именем, фамилией и соответствующим инициализатором для данных свойств (свойства должны быть константами).

class Human {
    let firstName: String
    let lastName: String?
    
    init(firstName: String, lastName: String?) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

//Создать класс Студент, который наследуется от класса Человек и к которому добавляется свойство Курс, добавить классу Студент инициализатор с именем, фамилией, курсом, так жу у студента должен быть вспомогательный инициализатор с именем и фамилией, при инциализации вспомогательныйм инициализатором свойство курс должно проставиться значением 1

class Student : Human {
    let courseOfStudy : Int
    
    init(firstName: String, lastName: String?, courseOfStudy: Int) {
        self.courseOfStudy = courseOfStudy
        super.init(firstName: firstName, lastName: lastName)
    }
    
    convenience override init(firstName: String, lastName: String?) {
        self.init(firstName: firstName, lastName: lastName, courseOfStudy: 1)
    }
}

let student1 = Student(firstName: "Ivan", lastName: "Ivanov")


//Создать класс Бомж, наследуемся от класса Студент, у бомжа должен быть инициализатор с именем, который будет принимать значение по умолчанию = "Бомж", в итоге после инициализации класса через init() у объекта должны быть проинициализированы значения со следующими значениями: имя = Бомж, фамилия должна быть nil, курс = 1

class Homeless : Student {
    init() {
        super.init(firstName: "Homeless", lastName: nil, courseOfStudy: 1)
    }
}
    
let homeless = Homeless()

homeless.firstName
homeless.lastName
homeless.courseOfStudy


//    convenience override init(firstName: String, lastName: String?, courseOfStudy: Int) {
//        self.init(firstName: "Homeless", lastName: nil, courseOfStudy: 1)
//    }
//}





//Task 3.
//Создать класс BestBank, который инициализируется символом и содержит свойство Имя, если инициализировать данный класс символом "Т", то значение свойства Имя должно быть "Тинькофф", при попытке инициализации другим символом должно вернуться nil (то есть класс не должен инициализироваться вовсе)

class BestBank {
    
    let symbol: Character
    let name: String?
    
    init(symbol: Character) {
        self.symbol = symbol
        if symbol == "T" {
            name = "Tinkoff"
        } else {
            name = nil
        }
    }
}


let b1 = BestBank(symbol: "T")
b1.name

let b2 = BestBank(symbol: "R")
b2.name

