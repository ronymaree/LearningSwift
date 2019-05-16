import UIKit

//let arrayOfNumbers = [1,5,3,6,2,7,23,34]
//
//var sum = 0
//
//for number in arrayOfNumbers{
//    sum += number
//    // sum = sum + number is the same thing
//    print(sum)
//
//}
//
////print final sum
//print("This is the final sum: \(sum) ")
//
//// print all numbers 1 to 10 - including 10
//
//for numbr in 1...10{
//    print(numbr)
//}
//
//// print all numbers 1 to 10 - not including 10
//
//for numbr in 1..<10{
//    print(numbr)
//}
//
////printout all even numbers
//// the "%" means "modulo" - number devide by 2 has 0 remainder
//for number in 1..<10 where number % 2 == 0{
//    print(number)
//}


//99 Bottles of beer challenge by Rony Maree

//let bottleNumber : Int = 100
//
//for numberOfBottles in 1..<100{
//
//    let lyricsBottle = bottleNumber-numberOfBottles
//    print("\(lyricsBottle) bottles of beer on the wall, \(lyricsBottle) bottles of beer.")
//
//    let remainingBottle = lyricsBottle - 1
//    if remainingBottle != 0{
//        print("Take one down and pass it around, \(remainingBottle) bottles of beer on the wall.")
//    } else {
//        print("Take one down and pass it around, no more bottles of beer on the wall.")
//    }
//    print("")
//}
//print("No more bottles of beer on the wall, no more bottles of beer.")
//print("Go to the store and buy some more, 99 bottles of beer on the wall.")

//Solution for the Challenge by Udemy

func beerSong(numberOfBottles: Int) -> String {
    var lyrics: String = ""
    
    for number in (1...numberOfBottles).reversed() {
        let newLine: String = "\n\(number) bottles of beer on the wall, \(number) bottles of beer. \nTake one down and pass it around, \(number - 1) bottles of beer on the wall.\n"
        lyrics += newLine
    }
    
    lyrics += "\nNomore bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    
    return lyrics
}

print (beerSong(numberOfBottles: 50))

