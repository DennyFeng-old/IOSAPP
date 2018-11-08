//
//  ViewController.swift
//  StopWatchApp
//
//  Created by Denny Feng on 10/29/18.
//  Copyright © 2018 Denny Feng. All rights reserved.
//

import UIKit

class ViewController: UIViewController   {
        // Model var stopWatch StopWatch()
        var stopWatch = StopWatch()
        var timers = Timer()
    var time:Double = 0.0
    @IBOutlet weak var timer: UILabel!
    
    @IBAction func startBtn(_ sender: UIButton) {
      
        if stopWatch.isRunning() == false {
            stopWatch.start()
            updateElapsedTime()
            timers = Timer.scheduledTimer(timeInterval: 0, target: self, selector: #selector(updateElapsedTime), userInfo: nil, repeats: true)
        }
    }
  
   @IBAction func stopBtn(_ sender: UIButton) {
        stopWatch.stop()
//        time = 0
        timers.invalidate()
//        timer.text = "\(time)"
    }
    
    @IBAction func resetBtn(_ sender: UIButton) {
        stopWatch.reset()
        time = 0
    timer.text = "\(time)"

       
        
    }
    
    @objc func updateElapsedTime(){
        
        timer.text = String(format: "%.1f", stopWatch.elapsedTime())
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateElapsedTime()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

