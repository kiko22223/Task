//
//  ViewController.swift
//  TaskRedAmp
//
//  Created by Christián on 04/03/2024.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageFront: UIImageView!
    @IBOutlet weak var labelFront: UILabel!
    @IBOutlet weak var buttonFront: UIButton!
    
    @IBAction func buttonPushed(_ sender: UIButton) {
        let storyboardToGo = self.storyboard?.instantiateViewController(withIdentifier: "baseQuiz") as! BaseQuizView
        self.navigationController?.pushViewController(storyboardToGo, animated: true)
     
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
    }

    
    

}

