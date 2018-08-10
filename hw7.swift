import Foundation

/*
 2. Представьте что вы играете в морской бои и у вас осталось некоторое количество кораблей на поле 10Х10 (можно буквы и цифры, а можно только цифры). Вы должны создать свитч, который примет тюпл с координатой и выдаст один из вариантов: мимо, ранил, убил.
 */

let oneDeskShip = ("A", 9)
let threeDeskShip = (("C", 5), ("C", 6), ("C", 7))
let threeDeskShip2 = (("C", 9), ("D", 9), ("E", 9))

let shoot = ("A", 9)

switch shoot {
    
case let(x, y) where x == oneDeskShip.0 && y == oneDeskShip.1 :
    print("You got kill oneDeskShip!")
case let(x, y) where x == threeDeskShip.0.0 || x == threeDeskShip.1.0 || x == threeDeskShip.2.0
    &&  y == threeDeskShip.0.1 || y == threeDeskShip.1.1 || y == threeDeskShip.2.1:
    print("You got hit threeDeskShip!")
case let(x, y) where x == threeDeskShip2.0.0 || x == threeDeskShip2.1.0 || x == threeDeskShip2.2.0
    && y == threeDeskShip2.0.1 || y == threeDeskShip2.1.1 || y == threeDeskShip2.2.1:
    print("You got hit threeDeskShip!")
    
default:
    print("miss")
}
