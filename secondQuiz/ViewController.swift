//
//  ViewController.swift
//  secondQuiz
//
//  Created by ihlas on 11.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    var main = Main()
    
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var buttonA: UIButton!
    @IBOutlet var buttonB: UIButton!
    @IBOutlet var buttonC: UIButton!
    @IBOutlet var progressBar: UIProgressView!
    
    
    @IBAction func pressedButton(_ sender: UIButton) {
        animatButton(button: sender)
        main.questionUpDate()
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateView), userInfo: nil, repeats: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editButtons(buttons: buttonA)
        editButtons(buttons: buttonB)
        editButtons(buttons: buttonC)
        updateView()
    }
    func editButtons(buttons: UIButton){
        buttons.layer.cornerRadius = 5
        buttons.layer.borderWidth = 1
        buttons.layer.borderColor = UIColor(red: 1.00, green: 0.79, blue: 0.28, alpha: 1.00).cgColor
    }
    func animatButton(button: UIButton){
        if (main.checkAnswer(input: button.currentTitle!)){
            button.backgroundColor = UIColor(red: 40, green: 0.87, blue: 0.58, alpha: 1.00)
        }else{
            
        button.backgroundColor = UIColor(red: 0.85, green: 0.23, blue: 0.34, alpha: 1.00)
        }
    }
    @objc func updateView(){
        scoreLabel.text = "Score: \(main.getScore())";
        questionLabel.text = main.getQuestion()
        progressBar.progress = main.getProg()
        buttonA.setTitle(main.getChoiceA(), for: .normal)
        buttonB.setTitle(main.getChoiceB(), for: .normal)
        buttonC.setTitle(main.getChoiceC(), for: .normal)
        buttonA.backgroundColor = UIColor.clear
        buttonB.backgroundColor = UIColor.clear
        buttonC.backgroundColor = UIColor.clear
    }
}

