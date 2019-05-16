//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Rony on 28/04/2018.
//  Copyright © 2018 Rony. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomAnswerIndex : Int = 0
    
    let answerArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    @IBOutlet weak var imageViewAnswer: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func askButton(_ sender: UIButton) {
        generateAnswer()
    }
    
    func generateAnswer(){
        randomAnswerIndex = Int(arc4random_uniform(5))
        
        print(randomAnswerIndex)
        
        imageViewAnswer.image = UIImage(named: answerArray[randomAnswerIndex])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        generateAnswer()
    }
}

