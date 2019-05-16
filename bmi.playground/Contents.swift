//import PlaygroundSupport
//import UIKit
//
//func calculateBMI(weight : Float, height : Float) -> String {
//
//    let BMI = (weight/(height*height))
//
//    if BMI > 25{
//        return "You are Overweight \(BMI)"
//    }
//    else if BMI > 18.5 && BMI <= 25 {
//        return "You are of normal weight \(BMI)"
//    }
//    else {
//        return "You are underweight \(BMI)"
//    }
//
//}
//
//print(calculateBMI(weight: 70, height: 1.73))
//

import UIKit

func calcBMI (weight: Double, height: Double) -> String {
    let bmi = weight / pow(height, 2)
    
    let shortenedBMI = String(format: "%.2f", bmi)
    
    var interpretation = ""
    
    if bmi > 25 {
        interpretation = "you are overweight"
    } else if bmi > 18.5 {
        interpretation = "you have a normal weight"
    } else {
        interpretation = "you are underweight"
    }
    
    return "Your BMI is \(shortenedBMI) and \(interpretation)"
}

print(calcBMI(weight: 78, height: 1.76))
