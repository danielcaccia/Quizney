//
//  ViewController.swift
//  Quizney
//
//  Created by Daniel Caccia on 18/01/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizneyBrain = QuizneyBrain()
    var quiz: [Question] = []
    var continueQuiz = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initialSetting()
    }

    @IBAction func startButtonPressed(_ sender: UIButton) {
        quiz = quizneyBrain.generateQuiz()
        
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let isAnswerCorrect = quizneyBrain.checkAnswer(with: userAnswer)

        if isAnswerCorrect {
            sender.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        } else {
            sender.backgroundColor = #colorLiteral(red: 0.8716338873, green: 0.3191627562, blue: 0.3489302397, alpha: 1)
        }
        
        continueQuiz = quizneyBrain.hasNextQuestion()
        
        if continueQuiz {
            Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        } else {
            Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(finishQuiz), userInfo: nil, repeats: false)
        }
        
    }
    
    @objc func updateUI() {
        scoreLabel.text = "Score: \(quizneyBrain.getScore())."
        textLabel.text = quizneyBrain.getQuestionText(quiz)
        progressBar.progress = quizneyBrain.getProgress()
        
        setButtonAspect()
    }
    
    @objc func finishQuiz() {
        scoreLabel.text = ""
        textLabel.text = "Your final score is: \(quizneyBrain.getScore())!"
        progressBar.progress = quizneyBrain.getProgress()
        
        initialSetting()
    }
    
    func initialSetting() {
        startButton.layer.cornerRadius = 10
        startButton.clipsToBounds = true
        startButton.backgroundColor = .orange
        startButton.alpha = 1
        startButton.isEnabled = true
        
        trueButton.alpha = 0
        trueButton.isEnabled = false
        
        falseButton.alpha = 0
        falseButton.isEnabled = false
        
        progressBar.alpha = 0
    }
    
    func setButtonAspect() {
        startButton.alpha = 0
        startButton.isEnabled = false
        
        trueButton.layer.cornerRadius = 10
        trueButton.clipsToBounds = true
        trueButton.backgroundColor = .orange
        trueButton.alpha = 1
        trueButton.isEnabled = true
        
        falseButton.layer.cornerRadius = 10
        falseButton.clipsToBounds = true
        falseButton.backgroundColor = .orange
        falseButton.alpha = 1
        falseButton.isEnabled = true
        
        progressBar.alpha = 1
    }
    
}
