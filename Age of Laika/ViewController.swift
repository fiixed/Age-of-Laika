//
//  ViewController.swift
//  Age of Laika
//
//  Created by Andrew Bell on 2/15/15.
//  Copyright (c) 2015 FiixedMobile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var humanYearsTextField: UITextField!
    
    
    @IBOutlet weak var dogYearsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func convertButton(sender: UIButton) {
        let stringFromTextField = humanYearsTextField.text
        var intFromString = stringFromTextField.toInt()!
        var dogYears:Double
        if intFromString <= 2 {
             dogYears = Double(intFromString) * 10.5
        } else {
            dogYears = Double(intFromString) * 4.0 + 21
        }
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "\(dogYears)"
        
    }
}

