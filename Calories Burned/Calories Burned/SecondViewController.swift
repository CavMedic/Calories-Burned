//
//  SecondViewController.swift
//  Calories Burned
//
//  Created by Greg Hogancamp on 9/18/17.
//  Copyright © 2017 Greg Hogancamp. All rights reserved.
//

import UIKit

var userExerciseTime: Double?
var userAvgHeartRate: Double?

class SecondViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

  
    @IBOutlet weak var exerciseTime: UITextField!
    
    
    @IBOutlet weak var avgHeartRate: UITextField!
    
    
    
    
    @IBAction func saveExerciseInfo(_ sender: AnyObject) {
    
        userExerciseTime = Double(exerciseTime.text!)
        userAvgHeartRate = Double(avgHeartRate.text!)
        
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.exerciseTime.resignFirstResponder()
        self.avgHeartRate.resignFirstResponder()
        return true
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

