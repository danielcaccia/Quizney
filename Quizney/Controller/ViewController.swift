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
    @IBOutlet weak var skipButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizneyBrain = QuizneyBrain()
    var continueQuiz = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setButtonAspect()
        initialSettings()
    }

    @IBAction func startButtonPressed(_ sender: UIButton) {
        quizneyBrain.generateQuiz()
        
        startQuiz()
        updateUI(originIsAnswer: false)
    }
    
    @IBAction func skipButtonPressed(_ sender: UIButton) {
        showHideInfo()
        
        continueQuiz = quizneyBrain.hasNextQuestion()
        
        if continueQuiz {
            updateUI(originIsAnswer: false)
        } else {
            finishQuiz()
        }
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let isAnswerCorrect = quizneyBrain.checkAnswer(with: userAnswer)

        if isAnswerCorrect {
            sender.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        } else {
            sender.backgroundColor = #colorLiteral(red: 0.8716338873, green: 0.3191627562, blue: 0.3489302397, alpha: 1)
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(showHideInfo), userInfo: nil, repeats: false)
        
        updateUI(originIsAnswer: true)
    }
    
    func updateUI(originIsAnswer: Bool) {
        scoreLabel.text = "Score: \(quizneyBrain.getScore())."
        progressBar.progress = quizneyBrain.getProgress()
        
        if originIsAnswer {
            textLabel.text = quizneyBrain.getCurious()
        } else {
            textLabel.text = quizneyBrain.getQuestionText()
        }
    }
    
    @objc func showHideInfo() {
        skipButton.isHidden = !skipButton.isHidden
        trueButton.isEnabled = !trueButton.isEnabled
        falseButton.isEnabled = !falseButton.isEnabled
        
        trueButton.backgroundColor = .orange
        falseButton.backgroundColor = .orange
    }
    
    func startQuiz() {
        startButton.isHidden = true
        trueButton.isHidden = false
        falseButton.isHidden = false
        progressBar.isHidden = false
    }
    
    @objc func finishQuiz() {
        scoreLabel.text = ""
        textLabel.text = "Your final score is: \(quizneyBrain.getScore())!"
        progressBar.progress = quizneyBrain.getProgress()
        
        initialSettings()
    }
    
}

extension ViewController {
    
    func initialSettings() {
        startButton.isHidden = false
        skipButton.isHidden = true
        trueButton.isHidden = true
        falseButton.isHidden = true
        progressBar.isHidden = true
        
        scoreLabel.text = ""
    }
    
    func setButtonAspect() {
        startButton.layer.cornerRadius = 10
        startButton.clipsToBounds = true
        startButton.backgroundColor = .orange
        
        skipButton.layer.cornerRadius = 10
        skipButton.clipsToBounds = true
        skipButton.backgroundColor = .orange
        
        trueButton.layer.cornerRadius = 10
        trueButton.clipsToBounds = true
        trueButton.backgroundColor = .orange
        
        falseButton.layer.cornerRadius = 10
        falseButton.clipsToBounds = true
        falseButton.backgroundColor = .orange
    }
    
}
