import UIKit
// Fibonacci Sequence Challenge by Rony Maree
func fibonacci(until: Int){
    var firstNumber: Int = 0
    var secondNumber: Int = 1
    print(firstNumber)
    print(secondNumber)

    var fiboNumber: Int = 0

    for _ in 0...until{
        fiboNumber = firstNumber + secondNumber
        firstNumber = secondNumber
        secondNumber = fiboNumber

        print(fiboNumber)
    }


}

fibonacci(until: 5)

////Solution by Udemy
//func fibonacci (until n : Int){
//    print (0)
//    print (1)
//
//    var num1 = 0
//    var num2 = 1
//
//    for iteration in 0...n{
//        let num = num1 + num2
//        print(num)
//        num1 = num2
//        num2 = num
//    }
//
//}
//
//fibonacci(until: 5)
