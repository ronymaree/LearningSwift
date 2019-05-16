//
//  ViewController.swift
//  Auto Layout Calculator
//
//  Created by Rony on 17/05/2018.
//  Copyright © 2018 Rony. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calcText: UILabel!
    
    var calcNum : Float = 0
    var calcStr : String = "0"
    
    var calcNum1 : Float = 0
    var calcNum2 : Float = 0
    var checkDecimal : Bool = false

    
    var opr : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateCalcText()
        
    }

    func updateCalcText () {
        
       
        calcText.text = String(calcNum)
        
    }
    
    
    func add(addNum1 : Float, addNum2 : Float) -> Float{
        var sum : Float
        sum = addNum1 + addNum2
        return sum
    }
    
    func sub(subNum1 : Float, subNum2 : Float) -> Float{
        var subtract : Float
        subtract = subNum1 - subNum2
        return subtract
    }
    
    func div(divNum1 : Float, divNum2 : Float) -> Float{
        var divide : Float
        divide = (divNum1/divNum2)
        return divide
    }
    
    func mult(mulNum1 : Float, mulNum2 : Float) -> Float{
        var multiply : Float
        multiply = mulNum1*mulNum2
        return multiply
    }
    
    func equal(num1: Float, num2: Float) -> Float {
       
        var answer : Float = 0
        
        if opr == "+" {
            answer = Float(add(addNum1: num1, addNum2: num2))
        } else
        if opr == "-" {
            answer = Float(sub(subNum1 : num1, subNum2 : num2))
        }
        if opr == "/" {
            answer = Float(div(divNum1 : num1, divNum2 : num2))
        } else
        if opr == "*" {
            answer = Float(mult(mulNum1 : num1, mulNum2 : num2))
        }
        
        return answer
    }
    
    func reset (){
        calcNum  = 0
        calcStr = "0"
        calcNum1 = 0
        calcNum2 = 0
        checkDecimal = false
        opr = ""
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if sender.tag == 0 && calcText.text != "0.0"{
            calcStr = calcStr + "0"
        } else
        if sender.tag == 1 {
            calcStr = calcStr + "1"
        } else
        if sender.tag == 2 {
            calcStr = calcStr + "2"
        } else
        if sender.tag == 3 {
            calcStr = calcStr + "3"
        } else
        if sender.tag == 4 {
            calcStr = calcStr + "4"
        } else
        if sender.tag == 5 {
            calcStr = calcStr + "5"
        } else
        if sender.tag == 6 {
            calcStr = calcStr + "6"
        } else
        if sender.tag == 7 {
            calcStr = calcStr + "7"
        } else
        if sender.tag == 8 {
            calcStr = calcStr + "8"
        } else
        if sender.tag == 9 {
            calcStr = calcStr + "9"
        } else
        if sender.tag == 9 {
            calcStr = calcStr + "9"
        } else
        if sender.tag == 10 {
            if checkDecimal == false {
            calcStr = calcStr + "."
            checkDecimal = true
            }
        } else
//////////////////////////////////////////////////////////////
       
        if sender.tag == 12 {
            if opr == "" {
                calcNum1 = calcNum
                calcNum = 0
            } else {
                calcNum2 = calcNum
                calcNum = 0
            }
            opr = "+"
        }else
        if sender.tag == 13 {
            if opr == "" {
                calcNum1 = calcNum
                calcNum = 0
            } else {
                calcNum2 = calcNum
                calcNum = 0
            }
            opr = "-"
        }else
        
        if sender.tag == 14 {
            if opr == "" {
                calcNum1 = calcNum
                calcNum = 0
            } else {
                calcNum2 = calcNum
                calcNum = 0
            }
            opr = "*"
        }else
        
        if sender.tag == 15 {
            if opr == "" {
                calcNum1 = calcNum
                calcNum = 0
            } else {
                calcNum2 = calcNum
                calcNum = 0
            }
            opr = "/"
        }else
        
        if sender.tag == 11 && opr != ""{
            let result = equal(num1: calcNum1, num2: calcNum2)
            print(result)
       
        }
        
        if sender.tag == 16 {
            
            reset()
            updateCalcText()
            
            
        }
        print(calcStr)
        calcNum = Float(calcStr)!
        print(calcNum)
        updateCalcText()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

