//
//  FinalView.swift
//  TaskRedAmp
//
//  Created by Christián on 04/03/2024.
//

import Foundation
import UIKit

class FinalView: UIViewController {
    
    //MARK: IBOutlets
    
    @IBOutlet weak var finalLabel: UILabel!
    @IBOutlet weak var finalButton: UIButton!
    @IBOutlet weak var emojiLabel: UILabel!
    
    //MARK: Local variables
    var mark : String?
    let mozog = MozogQuiz()
    var points: String?
    
    
    override func viewDidLoad() {
        navigationController?.navigationBar.isHidden = true
        super.viewDidLoad()
        if let markStr = mark {
            emojiLabel.text = markStr
        }
        if let pointsNumber = points {
            finalLabel.text = "Získali ste \(pointsNumber) bodov"
        }
    }
    

    //MARK: IBAction to play quiz again
    
    @IBAction func playAgain(_ sender: UIButton) {
        let storyboardToGo = self.storyboard?.instantiateViewController(withIdentifier: "startStoryboard") as! ViewController
        self.navigationController?.pushViewController(storyboardToGo, animated: true)
        
    }
    
}
