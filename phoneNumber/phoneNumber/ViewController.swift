//
//  ViewController.swift
//  phoneNumber
//
//  Created by Denny Feng on 10/27/18.
//  Copyright © 2018 Denny Feng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var enterNumber: UITextField!
    @IBAction func saveBtn(_ sender: Any) {
        UserDefaults.standard.set(enterNumber.text, forKey: "number")
    
    
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let nunmberObject = UserDefaults.standard.object(forKey: "number")
        if let number = nunmberObject as? String {
            enterNumber.text = number
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

