//
//  Question.swift
//  Quizzler
//
//  Created by Rony on 05/05/2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

//classes are created with capital letters
class Question {
    
    let questionText : String
    let answer : Bool
    
    //Xcode will ask for these to be initialised; to be assigned a 'value'
    init(text: String, correctAnswer: Bool) {
        //setting the initial values
        questionText = text
        answer = correctAnswer
    }
}


