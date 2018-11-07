//1. Сделать класс Человек, у этого класса будут проперти Папа, Мама, Братья, Сестры (всё опционально).
//Сделать примерно 30 человек, взять одного из них, поставить ему Папу/Маму. Папе и Маме поставить Пап/Мам/Братьев/Сестер. Получится большое дерево иерархии.
//Посчитать, сколько у этого человека двоюродных Братьев, троюродных Сестёр, Теть, Дядь, итд

//2. Все сестры, матери,... должны быть класса Женщина, Папы, братья,... класса Мужчины.
//У Мужчин сделать метод Двигать_диван, у Женщин Дать_указание (двигать_диван). Всё должно работать как и ранее.
//Всех этих людей положить в массив Семья, пройти по массиву посчитать количество Мужчин и Женщин, для каждого Мужчины вызвать метод Двигать_диван, для каждой женщины Дать_указание.

//3. Расширить класс человек, у него будет проперти Домашние_животные. Животные могут быть разные (попугаи, кошки, собаки...) их может быть несколько, может и не быть вообще.
//Раздать некоторым людям домашних животных. Пройти по всему массиву людей. Проверить каждого человека на наличие питомца, если такой есть - добавлять всех животных в массив животных. Посчитать сколько каких животных в этом массиве.
//Вся эта живность должна быть унаследована от класса Животные. У всех животных должен быть метод Издать_звук(крик) и у каждого дочернего класса этот метод переопределён на свой, т.е. каждое животное издаёт свой звук.
//Когда проходим по массиву животных, каждый представитель вида животных должен издать свой звук.
//
//Обязательно используем в заданиях Optional chaining и Type casting

class Human {
    var father: Male?
    var mother: Female?
    var brother: Male?
    var sister: Female?
    var daughter: Female?
    var son: Male?
    
    var pet: Animal?
}

class Male: Human {
    func moveSofa() {
        print("I move a sofa")
    }
}

class Female: Human {
    func giveInstructions()  {
        print("You must move a sofa!")
    }
}

class Animal {
    func giveVoice() {
    }

}

class Dog: Animal {
    override func giveVoice() {
        print("Gav")
    }
}

class Trotsky: Animal {
    override func giveVoice() {
        print("Я в гугле смотрел!")
    }
}

class Parrot: Animal {
    override func giveVoice() {
        print("Домашку сделал?")
    }
}
var human = Male()
var father = Male()
var mother = Female()
var brother = Male()
var sister = Female()
var dog = Dog()

human.father = father
human.mother = mother
human.brother = brother
human.sister = sister
human.pet = dog

var fathersGrandFather = Male()
var fathersGrandMother = Female()
var fathersSister = Female()
var fathersSistersSon = Male()
var trotsky = Trotsky()

father.father = fathersGrandFather
father.mother = fathersGrandMother
father.sister = fathersSister
father.sister?.son = fathersSistersSon
father.sister?.pet = trotsky

var mothersGrandFather = Male()
var mothersGrandMother = Female()
var mothersBrother = Male()
var motherBrotherDaughter = Female()
var parrot = Parrot()

mother.father = mothersGrandFather
mother.mother = mothersGrandMother
mother.brother = mothersBrother
mother.brother?.daughter = motherBrotherDaughter
mother.brother?.pet = parrot

var family = [human, father, mother, brother, sister, fathersGrandFather, fathersGrandMother, fathersSister, fathersSistersSon, mothersGrandFather, mothersGrandMother, mothersBrother, motherBrotherDaughter]

var humansParents = [human.father, human.mother]
var humansSister = [human.sister]
var humansBrother = [human.brother]

var humansGrandfathers = [human.father?.father, human.mother?.father]
var humansGrandmothers = [human.father?.mother, human.mother?.mother]
var humansUncles = [human.father?.brother, human.mother?.brother]
var humansAunts = [human.father?.sister, human.mother?.sister]
var humansСousin = [human.father?.sister?.son, human.father?.sister?.daughter, human.father?.brother?.daughter, human.father?.brother?.son, human.mother?.sister?.daughter, human.mother?.sister?.son, human.mother?.brother?.daughter, human.mother?.brother?.son]

print("Human have:\n\(humansGrandfathers.compactMap { $0 }.count) Grandfathers\n\(humansGrandmothers.compactMap { $0 }.count) Grandmothers\n\(humansUncles.compactMap { $0 }.count) Uncles\n\(humansAunts.compactMap { $0 }.count) Aunts\n\(humansСousin.compactMap { $0 }.count) Сousin\n" )


var mans = 0
var womans = 0
for i in family {
    if let man = i as? Male {
        mans += 1
        man.moveSofa()
    } else if let woman = i as? Female{
        womans += 1
        woman.giveInstructions()
    }
}
 print("\nFamily mans: \(mans)\nFamily womans: \(womans)\n")

var pets = [Animal]()

for i in family {
    if let pet = i.pet{
        pets.append(pet)
        i.pet?.giveVoice()
    }
}

print("\nAll pets in family is \(pets.count)")
