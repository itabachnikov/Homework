//: Playground - noun: a place where people can play
//Создать строку произвольного текста, минимум 200 символов. Используя цикл и оператор свитч посчитать количество гласных, согласных, цифр и символов.

import UIKit

let myStr = "screerc14c14c!$RC#!$C134ct134CT!#CT134tc314556c#$^C%#!$^C13c!%$13$%134C%!#$%Cc134c5!#$5cC#^C$@%^@$%^c245c6@$%C!#$%C!#$%C#!$%314c51435c1345c3145346516c$%C!#%C3415c#$!%CESRGWERgvWTV%$T$%tv$%y$%^^%34v$%^#$v6435v%!#$V435v1#$%V#$%V#$%V!#$%3145v!#45!#$%V#$%1345V#!$%!#$%V!#$^V$%^45v1creerc14c14c!$RC#!$C134ct134CT!#CT134tc314556c#$^C%#!$^C13c!%$13$%134C%!#$%Cc134c5!#$5cC#^C$@%^@$%^c245c6@$%C!#$%C!#$%C#!$%314c51435c1345c3145346516c$%C!#%C3415c#$!%CESRGWERgvWTV%$T$%tv$%y$%^^%34v$%^#$v6435v%!#$V435v1#$%V#$%V#$%V!#$%3145v!#45!#$%V#$%1345V#!$%!#$%V!#$^V$%^45v1creerc14c14c!$RC#!$C134ct134CT!#CT134tc314556c#$^C%#!$^C13c!%$13$%134C%!#$%Cc134c5!#$5cC#^C$@%^@$%^c245c6@$%C!#$%C!#$%C#!$%314c51435c1345c3145346516c$%C!#%C3415c#$!%CESRGWERgvWTV%$T$%tv$%y$%^^%34v$%^#$v6435v%!#$V435v1#$%V#$%V#$%V!#$%3145v!#45!#$%V#$%1345V#!$%!#$%V!#$^V$%^45v1"

var sumInt = 0
var sumVowels = 0
var sumConsonants = 0
var sumSymbol = 0

let charInt = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
let charVowels : Set = ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"]
let charСonsonants : Set = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z",
"b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
let charSymbol : Set = ["!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "_", "-", "=", "+" ]

for char in myStr {
    
    switch char {
        
        case char where charInt.contains(String(char)) :
            sumInt += 1
        
        case char where charVowels.contains(String(char)) :
            sumVowels += 1
        
        case char where charСonsonants.contains(String(char)) :
            sumConsonants += 1
        
        case char where charSymbol.contains(String(char)) :
            sumSymbol += 1
        
    default: break
    }
    
}

print("Массив содержит: \n\(sumInt) - чисел\n\(sumVowels) - гласных букв\n\(sumConsonants) - согласных букв \n\(sumSymbol) - символов\n")

//Создайте свитч который принимает возраст человека и выводит описание жизненного этапа

let age = 101

switch age {
case 0..<10: print("личинус")
case 10...20: print("щегол")
case 20...35: print("расцвет алкоголизма")
case 35...60: print("холёный")
case 60...100: print("дед")
case 100...200: print("кто ты, тварь?")

default: break
}
