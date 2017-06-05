//
//  ViewController.swift
//  Is It Prime
//
//  Created by Christopher Bray on 6/3/17.
//  Copyright © 2017 Christopher Bray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var enteredNum: UITextField!
   
    @IBOutlet var returnResult: UILabel!
 
    @IBAction func buttonPress(_ sender: Any) {
        
        if let userEnteredString = enteredNum.text {
        
        let userEnteredInteger = Int(userEnteredString)
            
            if let number = userEnteredInteger {
                
                var isPrime = true
                
                if number == 1 {
                    
                    isPrime = false
                }
                
                var i = 2
                
                while i < number {
                    
                    if number % i == 0 {
                        
                        isPrime = false
                        
                    }
                    i += 1
                }
                if isPrime == true {
                    returnResult.text = "\(number) is prime!"
                }
                else {
                    
                    returnResult.text = "\(number) is not prime"
                }

                
                
            } else {
                
                returnResult.text = "Please enter a positive whole number"
            }
         }
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

