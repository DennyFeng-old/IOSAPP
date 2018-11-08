//
//  StopWatch.swift
//  StopWatchApp
//
//  Created by Denny Feng on 10/29/18.
//  Copyright © 2018 Denny Feng. All rights reserved.


import Foundation

class StopWatch{
    //startTime is when the user called start(). If nil, the watch isnt running
    var startTime: Date?
    var savedTime: TimeInterval = 0.0
    func start(){
        if isRunning(){
            // is running
            print("watch was started but already running")
        
        } else {
            //set startTime to current time
            // not running
            startTime = Date()
            
        }
        
    }
    
    
    func stop() {
         // set startTime back to nil
        if isRunning(){
            savedTime = elapsedTime()
            startTime = nil
            // save elapsed time?
            

        } else {
            
            print("stop() was called, but already stopped!")
        }
    
        

        }
    func reset(){
        savedTime = 0
    }
    
    func elapsedTime() -> TimeInterval {
        // if not running, return 0
        if startTime == nil {
           return 0
           // return startTime!.timeIntervalSinceNow * -1
        } else {
            // if running, return the current time - the startTime
            return -startTime!.timeIntervalSinceNow + savedTime
        }
    }
    
    func isRunning() -> Bool{
        //        if startTime != nil {
        //            return true
        //        } else {
        //            return false
        //        }
        return startTime != nil
    }
    
    
    
    
    
    
}
