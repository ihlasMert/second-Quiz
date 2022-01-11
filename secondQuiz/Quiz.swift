//
//  Quiz.swift
//  secondQuiz
//
//  Created by ihlas on 11.01.2022.
//

import Foundation

struct Question{
    let question: String
    let choiceA: String
    let choiceB: String
    let choiceC: String
    let ans: String
    
    init(q: String, a: String, b: String, c: String, d: String){
        question = q
        choiceA = a
        choiceB = b
        choiceC = c
        ans = d
        
    }
    
}
