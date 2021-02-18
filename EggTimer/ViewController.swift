//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    
    var secondsRemaining = 60
    
    var timer = Timer()

    @IBOutlet weak var howDoneQ: UILabel!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
   
        print(eggTimes[hardness]!)
        
        secondsRemaining = eggTimes[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
            if secondsRemaining > 0 {
                print("\(secondsRemaining) seconds")
                secondsRemaining -= 1
            }else {
                howDoneQ.text = "Done"
            }
        
        }
        
        

}
