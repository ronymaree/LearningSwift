import UIKit

func loveCalculator (yourName : String, theirName : String) -> String {
    
    let loveScore = Int(arc4random_uniform(101))
    
    if loveScore > 80 {
        return "\(loveScore) Super Cool"
    }
    else if loveScore > 40 && loveScore <= 80 {
        return "Your love score is \(loveScore). You are like coke and mentos :\")"
    }
    else {
        return "\(loveScore) No Love"
    }
    
}

print (loveCalculator(yourName: "Rony", theirName: "Vanessa"))

var x : Int = 3

print (x)
