//
//  ViewController.swift
//  Prime_Number_Detector
//
//  Created by IMCS2 on 7/12/19.
//  Copyright © 2019 Tanishk. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var enterNumberTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    func return_integer(from textField: UITextField) -> Int {
        guard let text = textField.text, let number = Int(text) else {
            return 0
        }
        return number
    }
 
    @IBAction func primeCheckerButton(_ sender: Any) {
        
        enterNumberTextField.resignFirstResponder()
        
        var count = 0
        
        let num = return_integer(from: enterNumberTextField)
        print(num)
        
        // MARK: Exception
        if num == 0 {
            
            return resultLabel.text = "\(num) is not prime not composite"
            
        }
        
        if num <= 0 {
            
            return resultLabel.text = " \(num) is negative so not prime"
            
        }
        
        if num == 1 {
            
            return resultLabel.text = " Number is not prime"
            
        }
        
        
        
        // Checking for numbers
        for i in 1..<num {
            if num % i == 0{
                count = count + 1
            }
            
            
        }
        
        print(count)
        
        if count > 1{
            
            return resultLabel.text = " Number is not prime"
        }
            
        else{
            return resultLabel.text = " Number is prime"
        }
        
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Handle the text field’s user input through delegate callbacks.
        enterNumberTextField.delegate = self
        
    }
    
    //MARK: Actions
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        //hide keyboard
        textField.resignFirstResponder()
    //always want to respond to the user pressing the Return key
        return true
        
    }
    
//    func textFieldDidEndEditing(_ textField: UITextField) {
//        
//        
//    }
    
    
}

