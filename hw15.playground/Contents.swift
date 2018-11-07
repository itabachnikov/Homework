//: Playground - noun: a place where people can play

import Foundation

struct Room {
    let weight: Int
    let height: Int
    var hero: Hero?
    var box: Box?
    
    let background = "⬜️"
    
    func printRoom() {
        var stringVictory = ""
        for i in 0..<height {
            var stringValue = ""
            for j in 0..<weight {
                if let hero = hero, isHeroExistAt(x: j, y: i) {
                    if isHeroExistAt(x: j, y: i) == isBoxExistAt(x: j, y: i) {
                        stringVictory.append("You find a box!")
                    }
                    stringValue.append(hero.image)
                } else {
                    if let box = box, isBoxExistAt(x: j, y: i) {
                        stringValue.append(box.image)
                    } else {
                        stringValue.append(background)
                    }
                }
            }
            print(stringValue)
        }
        print(stringVictory + "\n")
    }
    
    func isHeroExistAt(x: Int, y: Int) -> Bool {
        if let hero = hero {
            return hero.x == x && hero.y == y
        }
        return false
    }
    
    func isBoxExistAt(x: Int, y: Int) -> Bool {
        if let box = box {
            return box.x == x && box.y == y
        }
        return false
    }
    
    func heroMove(to direction: Direction) {
        if let hero = hero {
            switch direction {
            case .right: hero.x += 1
            case .down: hero.y += 1
            case .up: hero.y -= 1
            case .left: hero.x -= 1
            }
        }
    }
}


enum Direction {
    case up
    case down
    case right
    case left
}


class Hero {
    var x: Int  {
        didSet {
            if x >= room.weight || x < 0 {
                x = oldValue
                print("Wrong way!")
            }
        }
    }
    var y: Int {
        didSet {
            if y >= room.height || y < 0 {
                y = oldValue
                print("Wrong way!")
            }
        }
    }
    let image: Character = "🎅🏿"
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

class Box {
    var x: Int
    var y: Int
    let image: Character = "🎁"
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

let room = Room(weight: 3, height: 3, hero: Hero(x: 1, y: 1), box: Box(x: 2, y: 2))
room.printRoom()

room.heroMove(to: .up)
room.printRoom()

room.heroMove(to: .up)
room.printRoom()

room.heroMove(to: .right)
room.printRoom()

room.heroMove(to: .down)
room.printRoom()

room.heroMove(to: .down)
room.printRoom()

room.heroMove(to: .down)
room.printRoom()




