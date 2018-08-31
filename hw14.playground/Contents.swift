////: Playground - noun: a place where people can play

import Foundation

////+++1. Создайте класс человек, который будет содержать имя, фамилию, возраст, рост и вес. Добавьте несколько свойств непосредственно этому классу чтобы контролировать:
////+++ минимальный и максимальный возраст каждого объекта
////+++ минимальную и максимальную длину имени и фамилии
////+++ минимально возможный рост и вес
//- самое интересное, создайте свойство, которое будет содержать количество созданных объектов этого класса
let MaxNameLength = 20
let MaxSurnameLength = 30


class Human {
    
    var name : String {
        didSet {
            if name.count > MaxNameLength {
                name = oldValue
            }
        }
    }
    
    var surname : String {
        didSet {
            if surname.count > MaxSurnameLength {
                surname = oldValue
            }
        }
    }
    
    class var maxAge : Int {
        return 100
    }
    class var minAge : Int {
        return 0
    }
    var age : Int {
        didSet {
            if age > Human.maxAge || age < Human.minAge {
                age = oldValue
            }
        }
    }
    class var minHeight : Int {
        return 30
    }
    var height : Int {
        didSet {
            if height < Human.minHeight {
                height = oldValue
            }
        }
    }
    
    class var minWeight : Double {
        return 3
    }
    var weight : Double {
        didSet {
            if weight < Human.minWeight {
                weight = oldValue
            }
        }
    }
    
    static var totalHumans = 0
    
    init(name: String, surname: String, age: Int, height: Int, weight: Double) {
        self.name = name
        self.surname = surname
        self.age = age
        self.height = height
        self.weight = weight
        
        Human.totalHumans += 1
    }
}

var human1 = Human(name: "Ivan", surname: "Ivanov", age: 31, height: 176, weight: 71)

print(human1.age)

human1.age = 101

print(human1.age)

Human.totalHumans

var human2 = Human(name: "Petr", surname: "Pertov", age: 41, height: 90, weight: 89)

Human.totalHumans

//2. Создать структуру «Отрезок», содержащую две внутренние структуры «Точки». Структуру «Точка» создать самостоятельно, несмотря на уже имеющуюся в Swift’е. Таким образом, структура «Отрезок» содержит две структуры «Точки» — точки A и B (stored properties). Добавить два computed properties: « середина отрезка» и «длина» (считать математическими функциями). При изменении середины отрезка должно меняться положение точек A и B. При изменении длины, меняется положение точки B

struct Segment {
    
    struct Point {
        var x: Double
        var y: Double
    }
    
    var a: Point
    var b: Point

    var middle: Point {
        get {
            let x = (b.x + a.x) / 2
            let y = (b.y + a.y) / 2
            
            return Point(x: x, y: y)
        }
        
        set {
            let offsetX = newValue.x - middle.x
            let offsetY = newValue.y - middle.y
            
            a.x += offsetX
            a.y += offsetY
            b.x += offsetX
            b.y += offsetY
        }
    }
    
    var length: Double {
        get {
            return sqrt((b.x - a.x) * (b.x - a.x) + ((b.y - a.y) * (b.y - a.y)))
        }
        
        set {
            b.x = a.x + (b.x - a.x) * (newValue / length)
            b.y = a.y + (b.y - a.y) * (newValue / length)
        }
    }
}

var segment = Segment(a: .init(x: 3, y: 6), b: .init(x: 7, y: 6))

segment.a.x
segment.a.y
segment.b.x
segment.b.y

segment.middle = Segment.Point(x: 7, y: 7)

segment.a.x
segment.a.y
segment.b.x
segment.b.y

segment.length

segment.length = 8

segment.a.x
segment.a.y
segment.b.x
segment.b.y

//3. Создайте энум, который будет представлять некую цветовую гамму. Этот энум должен быть типа Int и как raw значение должен иметь соответствующее 3 байтное представление цвета. Добавьте в этот энум 3 свойства типа: количество цветов в гамме, начальный цвет и конечный цвет

enum ColorSpectrum: Int {
    case Red = 0xFF0000
    case Green = 0x008000
    case Blue = 0x0000FF
    
    static let quantity = 3
    static let firstColor = ColorSpectrum.Red
    static let endColor = ColorSpectrum.Blue
}
