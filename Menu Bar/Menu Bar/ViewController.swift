//
//  ViewController.swift
//  Menu Bar
//
//  Created by Denny Feng on 10/26/18.
//  Copyright © 2018 Denny Feng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // variable scope- only available within this class
    var timer =  Timer()
    var time = 210
   
    @objc func decreaseTimer(){
        if  time > 0 {
            time -= 1
            timeLabel.text = String(time)
    } else {
        timer.invalidate()
        }
    }
    
    @IBOutlet weak var timeLabel: UILabel!
   
    @IBAction func playedPressed(_ sender: Any) {
      timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func pausedPressed(_ sender: UIBarButtonItem) {
        
       timer.invalidate()
    }
    
    @IBAction func  plusTen(_ sender: Any){
        time += 10
        timeLabel.text = String(time)
    }
    @IBAction func minusTen(_ sender: Any) {
        if  time > 10 {
            time -= 10
            timeLabel.text = String(time)
        }
    }
    @IBAction func resetBtn(_ sender: Any) {
      time = 210
      timeLabel.text = String(time)
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

