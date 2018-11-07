import  Foundation

protocol Jumper {
    var height: Int { get }
    var weight: Int { get set }
    func toJump()
}

protocol Swimmer {
    var depth: Int { get }
    var freshwater: Bool { get set }
    func toDive()
}

protocol Runner {
    var speed: Int { get }
    var warcry: String { get set }
    func running()
}

class Human: Runner {
    let name: String
    let distance: Int
    var warcry: String = "ARRRRGH!!!"
    
    var speed: Int {
        return distance
    }
    
    func running(){
        print("I can run, " + warcry)
    }
    
    init(name: String) {
        self.name = name
        self.distance = 1000
    }
}

class Animal: Jumper {
    let kind: String?
    var weight: Int = 0
    var size: Int
    
    var height: Int {
        return size
    }
    
    func toJump() {
        if weight > 50 {
            print("I'm big animal. I can't jump!")
        } else {
            print("I'm animal and I can jump!")
        }
    }
    
    init(kind: String?) {
        self.kind = kind
        self.size = weight
    }
}

class Fish: Swimmer {
    let type: String
    let pressure: Int
    var freshwater: Bool = false
    
    var depth: Int {
        return pressure
    }
    
    func toDive() {
        print("I'm fish and I can swimming")
    }
    
    init(type: String) {
        self.type = type
        self.pressure = 89
    }
}

class SuperHuman: Runner, Swimmer, Jumper {
    
    var speed: Int {
        return 1000
    }
    
    var warcry = "I don't cry, baby"
    
    var mySpeach = "I'm Superman and I can "
    
    func running() {
        print(mySpeach + "run faster than the speed of light!")
    }
    
    var depth: Int {
        return 2000
    }
    var freshwater = true
    
    func toDive() {
        print(mySpeach + "swimming faster than goldenfish!")
    }
    
    var height: Int {
        return 100
    }
    
    var weight = 200
    
    func toJump() {
        print(mySpeach + "my jump is higher than kangaroo!")
    }
}





let karas = Fish(type: "Fresh karas")
karas.freshwater = true
let shark = Fish(type: "sharky")

let kangaroo = Animal(kind: "Kangaroo")
let pig = Animal(kind: nil)
pig.weight = 80

let human = Human(name: "Adolf")
let olegBorisovich = Human(name: "Oleg")
olegBorisovich.warcry = "Meo"

let batman = SuperHuman()

let array : [Any] = [karas, olegBorisovich, batman, kangaroo, human, pig, shark]
/*
 protocol Jumper {
 var height: Int { get }
 var weight: Int { get set }
 func toJump()
 }
 
 */

for value in array {
    switch value {
    case let value as Runner:
        print("\nMy speed is \(value.speed)\nMy warcry: \(value.warcry)")
        value.running()
    case let value as Swimmer:
        print("\nI can dive to the depths of \(value.depth)")
        if value.freshwater == true {
            print("I can live in freshwater")
        } else {
            print("I can live in sea")
        }
        value.toDive()
    case let value as Jumper:
        print("\nMy weight is \(value.weight)")
        value.toJump()
    default: break
    }
}
print("==============================")
for value in array {
    if let value = value as? Runner {
        print("\nMy speed is \(value.speed)\nMy warcry: \(value.warcry)")
        value.running()
    }
    if let value = value as?  Swimmer {
        print("\nI can dive to the depths of \(value.depth)")
        if value.freshwater == true {
            print("I can live in freshwater")
        } else {
            print("I can live in sea")
        }
        value.toDive()
    }
    if let value = value as? Jumper {
        print("\nMy weight is \(value.weight)")
        value.toJump()
    }
}
//
