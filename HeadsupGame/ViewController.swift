//
//  ViewController.swift
//  HeadsupGame
//
//  Created by Martin Nordström on 2017-01-12.
//  Copyright © 2017 Martin Nordström. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 1: Store a bunch of questions in an array
    
    let questions = [
        "What's the most famous quote from Terminator?",
        "What company did Steve Jobs create?",
        "What instrument does Martin play?",
        "What name has the capital of Sweden?"
    ]
    
    var currentQuestionIndex = 0

    @IBOutlet weak var questionLabel: UILabel!

    @IBAction func nextQuestion(_ sender: AnyObject) {
        currentQuestionIndex += 1
        let numberOfQuestions = questions.count
        let nextQuestionIndex = currentQuestionIndex % numberOfQuestions
        questionLabel.text = questions[nextQuestionIndex]
}

}
