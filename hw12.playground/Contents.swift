import Foundation

//1. Создайте структуру студент. Добавьте свойства: имя, фамилия, год рождения, средний бал. Создайте несколько экземпляров этой структуры и заполните их данными. Положите их всех в массив (журнал).

struct Student {
    var name : String
    var surname : String
    var yearOfBirth : Int
    var averageScore : Double
}

var student1 = Student(name: "B", surname: "B", yearOfBirth: 1994, averageScore: 5.0)
var student2 = Student(name: "A", surname: "A", yearOfBirth: 1995, averageScore: 4.5)
var student3 = Student(name: "C", surname: "B", yearOfBirth: 1996, averageScore: 4.75)
var student4 = Student(name: "D", surname: "E", yearOfBirth: 1997, averageScore: 4.99)

var journal = [student1, student2, student3, student4]

//2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого. Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.

func printStudents(array: [Student]) {
    for (index, value) in array.enumerated() {
        print("\(index+1) Student: \nName: \(value.name)\nSurname: \(value.surname)\nYear of birth: \(value.yearOfBirth)\nAverage score: \(value.averageScore)\n")
    }
}

printStudents(array: journal)
print("----------------------------")
//3. С помощью функции sorted отсортируйте массив по среднему баллу, по убыванию и распечатайте “журнал”.

journal = journal.sorted(by: { $0.averageScore > $1.averageScore} )

printStudents(array: journal)
print("----------------------------")


//4. Отсортируйте теперь массив по фамилии (по возрастанию), причем если фамилии одинаковые, а вы сделайте так чтобы такое произошло, то сравниваются по имени. Распечатайте “журнал”.
journal = journal.sorted(by: {
    if $0.surname == $1.surname{
         return $0.name > $1.name
    } 
return $0.surname > $1.surname}
)

//journal.sorted(by: {
//    if $0.surname == $1.surname {
//        $0.name > $1.name
//} else {
//        $0.surname > $1.surname
//    }
//} return
//)


printStudents(array: journal)
