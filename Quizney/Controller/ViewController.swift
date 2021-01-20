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

        sender.backgroundColor = (isAnswerCorrect) ? #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1) : #colorLiteral(red: 0.8716338873, green: 0.3191627562, blue: 0.3489302397, alpha: 1)
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(showHideInfo), userInfo: nil, repeats: false)
        
        updateUI(originIsAnswer: true)
    }
    
    func updateUI(originIsAnswer: Bool) {
        scoreLabel.text = "Score: \(quizneyBrain.getScore())."
        progressBar.progress = quizneyBrain.getProgress()
        backgroundImage.image = UIImage(named: "\(quizneyBrain.getImage()).png")
        textLabel.text = (originIsAnswer) ? quizneyBrain.getCurious() : quizneyBrain.getQuestionText()
    }
    
    @objc func showHideInfo() {
        skipButton.isHidden = !skipButton.isHidden
        trueButton.isEnabled = !trueButton.isEnabled
        falseButton.isEnabled = !falseButton.isEnabled
        
        trueButton.backgroundColor = #colorLiteral(red: 0.151628226, green: 0.3118568361, blue: 0.4674137235, alpha: 1)
        falseButton.backgroundColor = #colorLiteral(red: 0.151628226, green: 0.3118568361, blue: 0.4674137235, alpha: 1)
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
        backgroundImage.image = UIImage(named: "fireworks.png")
        
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
        designButton(button: startButton)
        designButton(button: skipButton)
        designButton(button: trueButton)
        designButton(button: falseButton)
    }
    
    func designButton(button: UIButton) {
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        button.backgroundColor = #colorLiteral(red: 0.151628226, green: 0.3118568361, blue: 0.4674137235, alpha: 1)
    }
    
}
