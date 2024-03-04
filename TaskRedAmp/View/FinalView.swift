//
//  FinalView.swift
//  TaskRedAmp
//
//  Created by Christián on 04/03/2024.
//

import Foundation
import UIKit

class FinalView: UIViewController {
    
    let baseQuiz = BaseQuizView()
    
    @IBOutlet weak var finalLabel: UILabel!
    @IBOutlet weak var finalButton: UIButton!
    
    override func viewDidLoad() {
        navigationController?.navigationBar.isHidden = true
        super.viewDidLoad()
        finalLabel.text = "Získali ste \(baseQuiz.finalPoints) bodov"
    }
    
    @IBAction func playAgain(_ sender: UIButton) {
        let storyboardToGo = self.storyboard?.instantiateViewController(withIdentifier: "startStoryboard") as! ViewController
        self.navigationController?.pushViewController(storyboardToGo, animated: true)
        
    }
}
