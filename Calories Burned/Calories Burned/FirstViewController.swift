//
//  FirstViewController.swift
//  Calories Burned
//
//  Created by Greg Hogancamp on 9/18/17.
//  Copyright © 2017 Greg Hogancamp. All rights reserved.
//

import UIKit

var userAge: Double?
var userWeight: Double?
var userGender: String = "Female"

class FirstViewController: UIViewController, UITextFieldDelegate
{



class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var yourAge: UITextField!
   
    
    @IBOutlet weak var yourWeight: UITextField!
    
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBAction func genderSelect(_ sender: AnyObject) {
        switch segmentedControl.selectedSegmentIndex{
        case 0:
            userGender = "Female"
        case 1:
            userGender = "Male"
        default:
            return
        }
    
    
    }
    
    
    @IBAction func savePersonalInfo(_ sender: AnyObject) {
     userWeight = Double(yourWeight.text!)
     userAge = Double(yourAge.text!)
        }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        self.yourWeight.resignFirstResponder()
        self.yourAge.resignFirstResponder()
        return true
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    }

}

