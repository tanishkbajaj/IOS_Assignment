//
//  ViewController.swift
//  Game_1
//
//  Created by IMCS2 on 7/9/19.
//  Copyright © 2019 Tanishk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Controllers
    @IBOutlet weak var enterNumberText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    //MARK: Coverts to Int value
    func return_integer(from textField: UITextField) -> Int {
        guard let text = textField.text, let number = Int(text) else {
            return 0
        }
        return number
    }
    //MARK: Checking
    @IBAction func checkButton(_ sender: Any) {
        
        enterNumberText.resignFirstResponder()
        
        let num = return_integer(from: enterNumberText)
        
        //Generate Random Numbers
        
        let randNum = Int.random(in: 1 ... 10)
        
        if num  >= 1 && num  <= 10 {
            if(num == randNum){
                resultLabel.text = "Number Matched it was \(randNum)"
                self.view.backgroundColor = UIColor.green
            }
            else{
                resultLabel.text = "Number Not Matched it was \(randNum)"
                self.view.backgroundColor = UIColor.red
            }
        }else if(num > 10) {                                 //Exception
            resultLabel.text = "\(num) is greater than 10"
        }else {
            resultLabel.text = "\(num) is less than 1"
        }
    }
    
    
    
    
    
    
    
    
    
}

