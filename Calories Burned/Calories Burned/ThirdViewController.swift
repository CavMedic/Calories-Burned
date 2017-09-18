//
//  ThirdViewController.swift
//  Calories Burned
//
//  Created by Greg Hogancamp on 9/18/17.
//  Copyright © 2017 Greg Hogancamp. All rights reserved.
//

import UIKit

var caloriesBurned: Double?


class ThirdViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
        
    
    
    @IBAction func calcCalories(_ sender: AnyObject) {
            switch userGender {
                case "Female":
                caloriesBurned = ((userAge!*0.074)-(userWeight!*0.05741)+(userAvgHeartRate!*0.4472)-20.4022)*userExerciseTime!/4.184
                case "Male":
                caloriesBurned = ((userAge!*0.2017)-(userWeight!*0.09036)+(userAvgHeartRate!*0.6309)-55.0969)*userExerciseTime!/4.184
            default:
                return
            }
    calories.text = String(Int(caloriesBurned!))
    
    
    
    }
    
    
    @IBOutlet weak var calories: UILabel!
        
    }
    
    
    
    
    
    
    
    
    
    
    func didReceiveMemoryWarning() {
        didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

