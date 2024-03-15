import UIKit


// 1. while ციკლის გამოყენებით, 1-დან 20-მდე დაბეჭდეთ ყველა კენტი რიცხვის ნამრავლი.


var result = 1
var number = 1
while number < 20 {
    if number % 2 == 1 {
        result *= number
    }
        number += 1
}
    print(result)



// 2. შექმენით String ტიპის ცვლადი და ციკლის გამოყენებით შემოაბრუნეთ ის, მაგ: თუ გვაქვს “Test” უნდა მივიღოთ “tseT”
        
var greetimg = "გამარჯობა"
var reverse = ""
for character in greetimg {
    reverse = "\(character)" + reverse
}
print(reverse)

// 3. while loop-ისა და switch statement-ის გამოყენებით შექმენით უსასრულო შუქნიშანი, რომელიც ბეჭდავს შემდეგნაირად. "🔴->🌕->🟢->🔴->🌕..."

//var colorOfTrafficLight = "🔴"
//while true {
//        switch colorOfTrafficLight {
//        case "🔴":
//            print("🔴->", terminator: "")
//            colorOfTrafficLight = "🌕"
//        case "🌕":
//           print("🌕->", terminator: "")
//            colorOfTrafficLight = "🟢"
//            case "🟢":
//           print("🟢->", terminator: "")
//            colorOfTrafficLight = "🔴"
//       default:
//      break
//        }
//}

// 4 . Taylor Swift-ის კონცერტის ბილეთები იყიდება, თუმცა რაოდენობა ძალიან შეზღუდულია. While loop-ის მეშვეობით შექმენით ბილეთების გაყიდვის სიმულაცია და ყოველ გაყიდულ ბილეთზე დაბეჭდეთ “ბილეთი გაყიდულია, დარჩენილია მხოლოდ X რაოდენობა”, მანამ სანამ ბილეთების რაოდენობა მიაღწევს 0-ს, რის შემდეგაც ბეჭდავთ - “ყველა ბილეთი გაყიდულია გელოდებით კონცერტზე”

var tickets = 6
while tickets > 0 {
    tickets -= 1
    print("ბილეთი გაყიდულია, დარჩენილია მხოლოდ \(tickets)რაოდენობა")
    if tickets == 0 {
        print ("ყველა ბილეთი გაყიდულია, გელოდებით კონცერტზე")
    }
}

// 5.შექმენით array, შეავსეთ ისინი ელემენტებით. შეამოწმეთ და დაბეჭდეთ: "array-ში ყველა ელემენტი განსხვავებულია" ან "array შეიცავს მსგავს ელემენტებს"  (array-ს ტიპს არაქვს მნიშვნელობა.)


var array = [ 1, 2, 3, 4, 5, 5 ]
var different = Set(array)
if different.count == array.count {
    print("array-ში ყველა ელემენტი განსხვავებულია")
} else {
    print("array შეიცავს მსგავს ელემენტებს")
}

//  6 .დაწერეთ ქლოჟერი რომელიც გამოითვლის ორი რიცხვის სხვაობას და დააბრუნებს მიღებულ მნიშვნელობას

let number1 = 7
let number2 = 2
let closure: ((Int, Int) -> Int) = { (number1, number2) in
    return number1 - number2
}
print(closure(number1,number2))

// 7.დაწერეთ ფუნქცია, რომელსაც გადააწვდით String ტიპის პარამეტრს. დაითვალეთ ამ პარამეტრში თანხმოვნების რაოდენობა და დაბეჭდეთ ის.

func Consonants (Word : String) -> (Int){
    var count1 = 0
    let consonants = "qwrtypsdfghjklzxcvbnm"
    for cons in Word {
        for  char in consonants {
            if cons.lowercased() == char.lowercased() {
                count1 += 1
            }
        }
    }
    return count1
}
 Consonants(Word: "Salome Topuria")
print(Consonants(Word: "Salome Topuria"))

