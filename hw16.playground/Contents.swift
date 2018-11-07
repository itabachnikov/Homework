//: Playground - noun: a place where people can play

import Foundation

/*Task 1:
 Создайте базовый класс артист с "именем", "фамилией" и методом "выступление". У каждого дочернего класса свой метод "выступление" (актер - играет, клоун - развлекает, танцор - танцует), включающее в себя представление участника, в каком жанре выступление и действие (можно просто вывод строки). Создайте дочерний класс "художник", который не хочет, чтобы его называли вы и всегда ставит другое имя, когда вы пытаетесь его назвать. Положить все экземпляры в один массив и пройдясь по нему вызвать у всех выступление.
 */

print("------------------------Task_1--------------------------")

class Artist {
    var firstName : String = ""
    var lastName : String = ""
    
    func action() -> String {
        return "Hello! My name is " + firstName + " " + lastName + ". And I'm "
    }
}

class Actor : Artist {
    override func action() -> String {
        return super.action() + "playing a movie"
    }
}

class Clown : Artist {
    override func action() -> String {
        return super.action() + "joking for children"
    }
}

class Dancer : Artist {
    override func action() -> String {
        return super.action() + "Dancing like God"
    }
}

class Painter : Artist {
    override var firstName : String {
        set {
        }
        get {
            return super.firstName + "Leonardo "
        }
    }
    
    override var lastName : String {
        set {
        }
        get {
            return super.lastName + "da Vinci"
        }
    }
    
    override func action() -> String {
        return "I'm " + firstName + lastName + ". I'm the author of Mona Lisa"
    }
}

let actor = Actor()
actor.firstName = "Bred"
actor.lastName = "Pit"

let clown = Clown()
clown.firstName = "John Wayne"
clown.lastName = "Gacy"

let dancer = Dancer()
dancer.firstName = "Bob"
dancer.lastName = "Marley"

let painter = Painter()
painter.firstName = "Charlie"
painter.lastName = "123"

let array = [actor, clown, dancer, painter]

for value in array {
    print(value.action())
}

/*Task 2:
 Базовый класс - "транспортное средство"; свойства - скорость, вместимость, стоимость одной перевозки (все computed properties). Несколько дочерних классов (самолет, корабль, вертолет, машина, поезд) с переопределенными свойствами (для каждого своя скорость вместимость и стоимость). Создать по одному объекту каждому дочернему классу. У всех есть метод, который что-то расчитывает (скорость, расстояние, количество пассажиров), конкретно сколько уйдет денег и времени, чтобы перевести определенное количество человек из пункта А в пункт В. При перевозке 100 и 1000 человек ответить на следующие вопросы:
 -Как быстро мы сможем это сделать и каким транспортом?
 -Стоимость всех перевозок и количество?
 -Какой транспорт быстрее справится и какой более выгодный?
 */

print("\n------------------------Task_2--------------------------")

class Transport {
    var speed : Int {
        return 0
    }
    var capacity : Int {
        return 0
    }
    var cost : Int {
        return 0
    }
    
    func calculated(distanse : Int, people : Int) {
        let time = distanse / speed
        let round = people > capacity ? ((people / capacity) * 2) : 1
        let totalPrice = round * cost
        let totalTime = time * round
        let costForOne = totalPrice / people
        print("For \(people):\nTotal time is \(totalTime) hours.\nTotal cost is \(totalPrice)$(\(costForOne)$ for every people).\nTotal rounds is \(round)\n")
    }
}

class Airplan : Transport {
    override var speed : Int {
        return 1000
    }
    override var capacity : Int {
        return 850
    }
    override var cost : Int {
        return 10000
    }
}

class Ship : Transport {
    override var speed : Int {
        return 55
    }
    override var capacity : Int {
        return 3000
    }
    override var cost : Int {
        return 7500
    }
}

class Helicopter : Transport {
    override var speed : Int {
        return 350
    }
    override var capacity : Int {
        return 25
    }
    override var cost : Int {
        return 2500
    }
}

class Car : Transport {
    override var speed : Int {
        return 90
    }
    override var capacity : Int {
        return 4
    }
    override var cost : Int {
        return 500
    }
}

class Train : Transport {
    override var speed : Int {
        return 150
    }
    override var capacity : Int {
        return 760
    }
    override var cost : Int {
        return 1500
    }
}

let airplan = Airplan()
print("Airplane:")
airplan.calculated(distanse: 1000, people: 100)
airplan.calculated(distanse: 1000, people: 1000)

let ship = Ship()
print("Ship:")
ship.calculated(distanse: 1000, people: 100)
ship.calculated(distanse: 1000, people: 1000)

let helicopter = Helicopter()
print("Helicopter:")
helicopter.calculated(distanse: 1000, people: 100)
helicopter.calculated(distanse: 1000, people: 1000)

let car = Car()
print("Car:")
car.calculated(distanse: 1000, people: 100)
car.calculated(distanse: 1000, people: 1000)

let train = Train()
print("Train:")
train.calculated(distanse: 1000, people: 100)
train.calculated(distanse: 1000, people: 1000)


/*Task 3:
 Пять классов: люди, собаки, жирафы, обезьяны и крокодилы. Сделайте по парочке объектов каждого класса. Создать такой родительский класс, который будет группировать их. Создать массив с пресмыкающимися и посчитать их количество, потом также создать массив и посчитать сколько четвероногих, животных и тд. Массивы не содержат тип Any. */

print("\n------------------------Task_3--------------------------")

class Creation {
    var live : Bool {
        return true
    }
    var animal : Bool {
        return true
    }
    var countLegs : Int {
        return 4
    }
}

class Human : Creation {
    override var animal : Bool {
        return false
    }
    override var countLegs: Int {
        return 2
    }
}

class Dogs : Creation {
    
}

class Giraffe : Creation {
    
}

class Monkey : Creation {
    
}

class Crocodile : Creation {
    
}

let human1 = Human()
let human2 = Human()
let dog1 = Dogs()
let dog2 = Dogs()
let giraffe1 = Giraffe()
let giraffe2 = Giraffe()
let monkey1 = Monkey()
let monkey2 = Monkey()
let crocodile1 = Crocodile()
let crocodile2 = Crocodile()

let arrayCreations = [human1, human2, dog1, dog2, monkey1, crocodile1, giraffe1, giraffe2, monkey2, crocodile2]

func determination (array: [Creation]) {
    var arrayLives : Array<Creation> = []
    var arrayAnimals : Array<Creation> = []
    var arrayFourLegs : Array<Creation> = []
    
    for value in array {
        if value.live == true {
            arrayLives.append(value)
        }
        if value.animal == true {
            arrayAnimals.append(value)
        }
        if value.countLegs == 4 {
            arrayFourLegs.append(value)
        }
    }
    
    print("Array have \(arrayLives.count) lives creations")
    print("Array have \(arrayAnimals.count) animals")
    print("Array have \(arrayFourLegs.count) creations, who have 4 legs")
}

determination(array: arrayCreations)
