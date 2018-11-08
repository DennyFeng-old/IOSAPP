//
//  ViewController.swift
//  Scores_Revisited
//
//  Created by Denny Feng on 10/25/18.
//  Copyright © 2018 Denny Feng. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var vScoreLabel: UILabel!
    @IBOutlet weak var gScoreLabel: UILabel!
    @IBOutlet weak var gScoreTextField: UITextField!
    @IBOutlet weak var vScoreTextField: UITextField!
    @IBOutlet weak var whoWonLabel: UILabel!
   
    var gScore:Int? = 0
    var vScore:Int? = 0
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
         let gScorePostiveIntOnly:Int? = Int(gScoreTextField.text!)
         let vScorePostiveIntOnly:Int? = Int(vScoreTextField.text!)
         let gScoreStartingPoint:Int = 0
         let vScoreStartingPoint:Int = 0
    if gScorePostiveIntOnly != nil && gScorePostiveIntOnly! >= gScoreStartingPoint{
             gScoreLabel.text = "\(gScorePostiveIntOnly!)"
        }
    if vScorePostiveIntOnly != nil && vScorePostiveIntOnly! >= vScoreStartingPoint {
            vScoreLabel.text = "\(vScorePostiveIntOnly!)"
        }
    }
@IBAction func whoWonBtn(_ sender: UIButton) {
        gScore = Int(gScoreLabel.text!)
        vScore = Int(vScoreLabel.text!)
    
    if gScore! > vScore!{
        whoWonLabel.text = "Giants!"
    }
    else if vScore! > gScore! {
        whoWonLabel.text = "Visitors!"
    }
}
    
   override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        gScoreTextField.delegate = self
        vScoreTextField.delegate = self
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

