//
//  ViewController.swift
//  Temperature Calculator
//
//  Created by Ievgeniia Pavliuchyk on 17/02/2019.
//  Copyright © 2019 Ievgeniia Pavliuchyk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var enterLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func calculate(_ sender: Any) {
    }
    
    @IBAction func formatCalculation(_ sender: Any) {
        
        if segmentControl.selectedSegmentIndex == 0 {
            enterLabel.text = "Enter Fahrenheit"
            outputLabel.text = "O Celsius"
            textField.text = ""
            
        }
        
        if segmentControl.selectedSegmentIndex == 1 {
            enterLabel.text = "Enter Celsius"
            outputLabel.text = "O Fahrenheit"
            textField.text = ""
            
        }
        
    }
}

