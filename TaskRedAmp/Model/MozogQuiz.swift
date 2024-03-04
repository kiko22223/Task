//
//  MozogQuiz.swift
//  TaskRedAmp
//
//  Created by Christián on 04/03/2024.
//

import Foundation
import UIKit

struct MozogQuiz {
    let kvizoveOtazky: [questionsAnswers] = [
        questionsAnswers(question: "Hlavné mesto Slovenska?", answers: ["Košice", "Bratislava", "Nitra", "Žilina"], rightAnswer: "Bratislava"),
        questionsAnswers(question: "Najdlhšia rieka v Taliansku?", answers: ["Pád", "Tiber", "Adda", "Reno"], rightAnswer: "Tiber"),
        questionsAnswers(question: "Koľko kostí má ľudské telo?", answers: ["226", "206", "216", "236"], rightAnswer: "206"),
        questionsAnswers(question: "Kto napísal román Frankenstein?", answers: ["Mary Shelley", "Percy Shelley", "John Keats", "Lord Byron"], rightAnswer: "Mary Shelley"),
        questionsAnswers(question: "Ktorá planéta je známa ako „Červená planéta“?", answers: ["Mars", "Venuša", "Zem", "Jupiter"], rightAnswer: "Mars"),
        questionsAnswers(question: "Ktorý oceán je najväčší na Zemi?", answers: ["Atlantický oceán", "Tichý oceán", "Indický oceán", "Severný ľadový oceán"], rightAnswer: "Tichý oceán"),
        questionsAnswers(question: "V akom roku bol postavený Koloseum?", answers: ["70 po Kr.", "80 po Kr.", "90 po Kr.", "100 po Kr."], rightAnswer: "80 po Kr."),
        questionsAnswers(question: "Aké je chemické zloženie vody?", answers: ["H2O", "H2O2", "H4O", "H3O"], rightAnswer: "H2O"),
        questionsAnswers(question: "Koľko kontinentov je na Zemi?", answers: ["7", "6", "8", "9"], rightAnswer: "7"),
        questionsAnswers(question: "Kto namaľoval slávny obraz Mona Lisa?", answers: ["Michelangelo", "Leonardo da Vinci", "Raffael", "Sandro Botticelli"], rightAnswer: "Leonardo da Vinci"),
        questionsAnswers(question: "Ktorá krajina je najväčšia na Zemi?", answers: ["Rusko", "Kanada", "Čína", "Spojené štáty americké"], rightAnswer: "Rusko"),
        questionsAnswers(question: "Koľko je 2 + 2?", answers: ["3", "4", "5", "6"], rightAnswer: "4"),
        questionsAnswers(question: "Ktoré zviera je najrýchlejšie na Zemi?", answers: ["Gepard", "Sokol", "Antilopa", "Žralok biely"], rightAnswer: "Gepard"),
        questionsAnswers(question: "Ktorý je najvyšší vrch na Zemi?", answers: ["Mount Everest", "K2", "Kangchenjunga", "Lhotse"], rightAnswer: "Mount Everest"),
        questionsAnswers(question: "Koľko dní má rok?", answers: ["365", "366", "367", "368"], rightAnswer: "365"),
        questionsAnswers(question: "Ktorý je najväčší oceán na Zemi?", answers: ["Indický oceán", "Severný ľadový oceán","Tichý oceán", "Atlantický oceán"], rightAnswer: "Tichý oceán"),
        questionsAnswers(question: "Ktorý je najmenší kontinent na Zemi?", answers: [ "Európa", "Afrika","Austrália", "Antarktída"], rightAnswer: "Austrália"),
        questionsAnswers(question: "Koľko kostí má ľudská lebka?", answers: ["25", "23", "24","22"], rightAnswer: "22")
    ]
    
    var questionOrder = 0
    var numberOfPoints = 0
    
    func checkCorrection(_ userAnswer : String) -> UIColor {
        if userAnswer == kvizoveOtazky[questionOrder].rightAnswer {
            return .green
        } else {
            return .red
        }
    }
    func pointCalc (_ userAnswer : String) -> Int {
        if userAnswer == kvizoveOtazky[questionOrder].rightAnswer {
            return 1
        } else {
            return 0
        }
    }
    
    func getQ() -> String {
        return kvizoveOtazky[questionOrder].question
    }
    
    func progress() -> Float {
        return Float(questionOrder) / Float(kvizoveOtazky.count)
    }
    
    mutating func nextQ() {
        if questionOrder + 1 < kvizoveOtazky.count {
            questionOrder += 1
        } else {
            questionOrder = 0
        }
    }

}
