
//
//func nameOfFunction() {
//    print("go to the shops")
//    print("buy 2 cartons of milk")
//    print("pay $2")
//    print("come home")
//
//}

//Callint the getMilk() function

//nameOfFunction()


//func getMilk(howManyMilkCartons : Int) {
//        print("go to the shops")
//        print("buy \(howManyMilkCartons) cartons of milk")
//        let priceToPay = howManyMilkCartons * 2
//        print("pay $\(priceToPay)")
//        print("come home")
//
//}

func getMilk(howManyMilkCartons : Int, moneyGiven : Int) -> Int {
        print("go to the shops")
        print("buy \(howManyMilkCartons) cartons of milk")
        let priceToPay = howManyMilkCartons * 2
        print("pay $\(priceToPay)")
        print("come home")

        let change = moneyGiven - priceToPay
    
        return change
}


var thisNumber : Int = 5
var amountOfChange = getMilk(howManyMilkCartons: thisNumber, moneyGiven: 10)


print("Hello master, here is your $\(amountOfChange) change")
