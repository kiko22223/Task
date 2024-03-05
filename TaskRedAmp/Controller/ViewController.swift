//
//  ViewController.swift
//  TaskRedAmp
//
//  Created by Christián on 04/03/2024.
//

import UIKit

class ViewController: UIViewController {

    //MARK: IBOutlets
    
    @IBOutlet weak var imageFront: UIImageView!
    @IBOutlet weak var labelFront: UILabel!
    @IBOutlet weak var buttonFront: UIButton!
    
    //MARK: IBAcrtion for starting the quiz
    
    @IBAction func buttonPushed(_ sender: UIButton) {
        let storyboardToGo = self.storyboard?.instantiateViewController(withIdentifier: "baseQuiz") as! BaseQuizView
        self.navigationController?.pushViewController(storyboardToGo, animated: true)
     
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // For nice UI hiding navigation buttons
        navigationController?.navigationBar.isHidden = true
    }

    
    

}

