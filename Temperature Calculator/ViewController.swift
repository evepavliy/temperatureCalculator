//
//  ViewController.swift
//  Temperature Calculator
//
//  Created by Ievgeniia Pavliuchyk on 17/02/2019.
//  Copyright © 2019 Ievgeniia Pavliuchyk. All rights reserved.
//

import UIKit
import Foundation

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
        
        self.resignFirstResponder()
        
        
        if CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: textField.text!)) {
        
        if segmentControl.selectedSegmentIndex == 0 {
            let fahr = Double(textField.text!)
            let cels = (fahr! - 32)*(5/9)
            
            outputLabel.text = String(format: "%2.2f" ,cels) + " Celsius"
            
            if cels > 120 {
                
                imageView.image = UIImage(named: "Temp9")
                
            } else if cels > 100 {
                
                imageView.image = UIImage(named: "Temp8")
                
            } else if cels > 80 {
                
                imageView.image = UIImage(named: "Temp7")
                
            } else if cels > 60 {
                
                imageView.image = UIImage(named: "Temp6")
                
            } else if cels > 40 {
                
                imageView.image = UIImage(named: "Temp5")
                
            } else if cels > 20 {
                
                imageView.image = UIImage(named: "Temp4")
                
            } else if cels > 0 {
                
                imageView.image = UIImage(named: "Temp3")
                
            } else if cels > -20 {
                
                imageView.image = UIImage(named: "Temp2")
                
            } else if cels < -20 {
                
                imageView.image = UIImage(named: "Temp1")
            }
           
        }
        
        if segmentControl.selectedSegmentIndex == 1 {
            let cels = Double(textField.text!)
            let fahr = (cels! * (9/5) ) + 32
            
            outputLabel.text = String(format: "%2.2f" ,fahr) + " Fahrenheit"
            
            if fahr > 160 {
                
                imageView.image = UIImage(named: "Temp9")
                
            } else if fahr > 140 {
                
                imageView.image = UIImage(named: "Temp8")
                
            } else if fahr > 120 {
                
                imageView.image = UIImage(named: "Temp7")
                
            } else if fahr > 100 {
                
                imageView.image = UIImage(named: "Temp6")
                
            } else if fahr > 80 {
                
                imageView.image = UIImage(named: "Temp5")
                
            } else if fahr > 60 {
                
                imageView.image = UIImage(named: "Temp4")
                
            } else if fahr > 40 {
                
                imageView.image = UIImage(named: "Temp3")
                
            } else if fahr > 20 {
                
                imageView.image = UIImage(named: "Temp2")
                
            } else if fahr < 20 {
                
                imageView.image = UIImage(named: "Temp1")
            }
            
          }
            
        } else {
            
            outputLabel.text = "Number expected"
            
        }
        
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

