//
//  Main.swift
//  secondQuiz
//
//  Created by ihlas on 11.01.2022.
//

import Foundation
struct Main{
    var score = 0
    var questionNumber = 0
    let quizQuesiton = [Question(q: "Who painted the Mona Lisa?", a: "Picasso", b: "Leonardo da Vinci", c: "Vincent van Gogh", d: "Leonardo da Vinci"),
                        Question(q: "What's a baby rabbit called?", a: "kittens", b: "bunnies", c: "hares", d: "kittens"),
                        Question(q: "What is the largest country in the world?", a: "USA", b: "China", c: "Russia", d: "Russia"),
                        Question(q: "How many valves does the heart have?", a: "Four", b: "Five", c: "Seven", d: "Four"),
                        Question(q: "What v the AC button on a calculator stand for?", a: "All Calculate", b: "All Clear", c: "All Copy", d: "All Calculate"),
                        Question(q: "What is the smallest planet in our solar system?", a: "Pluto", b: "Mars", c: "Mercury", d: "Mercury"),
                        Question(q: "In what decade was pop icon Madonna born?", a: "1950s", b: "1960s", c: "1970s", d: "1950s"),
                        Question(q: "What number is found in reference to their varieties on Heinz products?", a: "57", b: "56", c: "55", d: "57"),
                        Question(q: "What is the capital city of Australia?", a: "Sydney", b: "Melbourne", c: "Canberra", d: "Canberra"),
                        Question(q: "What language is spoken in Brazil?", a: "Spanish", b: "Portuguese", c: "English", d: "Portuguese"),
                        Question(q: "How many centimetres in a metre?", a: "100", b: "10", c: "1000", d: "100"),
                        Question(q: "How many notes are there in a musical scale?", a: "5", b: "6", c: "7", d: "7")]
 
    func getQuestion() -> String{
        return quizQuesiton[questionNumber].question
        
    }
    func getChoiceA() -> String{
        return quizQuesiton[questionNumber].choiceA
    }
    func getChoiceB() -> String{
        return quizQuesiton[questionNumber].choiceB
    }
    func getChoiceC() -> String{
        return quizQuesiton[questionNumber].choiceC
    }
    func getAns() -> String{
        return quizQuesiton[questionNumber].ans
    }
    func getScore() -> Int{
    return score
    }
    func getProg() -> Float{
        return  Float(questionNumber) / Float(quizQuesiton.count)
    }
    mutating func questionUpDate(){
        if (questionNumber < quizQuesiton.count-1) {
            questionNumber += 1
        }else{
            questionNumber = 0
        }
    }
    mutating func checkAnswer(input: String) -> Bool{
        if (input == getAns()){
            score += 1
            return true
            
        }else{
            return false
        }
        
    }
}
