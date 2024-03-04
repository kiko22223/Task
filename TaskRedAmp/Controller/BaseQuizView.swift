//
//  BaseQuizView.swift
//  TaskRedAmp
//
//  Created by Christián on 04/03/2024.
//

import Foundation
import UIKit
class BaseQuizView: UIViewController {
    
    var userPointsNumber = 0
    
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var quizButton1: UIButton!
    @IBOutlet weak var quizButton2: UIButton!
    @IBOutlet weak var quizButton3: UIButton!
    @IBOutlet weak var quizButton4: UIButton!
    @IBOutlet weak var userPoints: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var mozog = MozogQuiz()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }
    
    @IBAction func answerButtonFunc(_ sender: UIButton) {
        let answer = sender.titleLabel?.text
        sender.tintColor = mozog.checkCorrection(answer!)
        userPointsNumber += mozog.pointCalc(answer!)
        print(userPointsNumber)
        mozog.nextQ()
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    
    @objc func updateUI() {
        if mozog.questionOrder + 1 == mozog.kvizoveOtazky.count {
            let storyboardToGo = self.storyboard?.instantiateViewController(withIdentifier: "finalView") as! FinalView
            self.navigationController?.pushViewController(storyboardToGo, animated: true)
        }
        progressBar.progress = mozog.progress()
        questionText.text = mozog.getQ()
        userPoints.text = String(userPointsNumber)
        
        quizButton1.setTitle(mozog.kvizoveOtazky[mozog.questionOrder].answers[0], for: .normal)
        quizButton2.setTitle(mozog.kvizoveOtazky[mozog.questionOrder].answers[1], for: .normal)
        quizButton3.setTitle(mozog.kvizoveOtazky[mozog.questionOrder].answers[2], for: .normal)
        quizButton4.setTitle(mozog.kvizoveOtazky[mozog.questionOrder].answers[3], for: .normal)
        quizButton1.tintColor = .link
        quizButton2.tintColor = .link
        quizButton3.tintColor = .link
        quizButton4.tintColor = .link

    }

    
    
}