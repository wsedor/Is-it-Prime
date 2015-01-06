//
//  ViewController.swift
//  Is it Prime
//
//  Created by WILLIAM EDOR on 12/2/14.
//  Copyright (c) 2014 wiseApp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var inputBox: UITextField! // get input from user
    
    @IBOutlet weak var outMessage: UILabel! // message to output Yes or No
    @IBAction func isPrime(sender: AnyObject) { // button tapped and then contents occur
        
        var i: Int                 // to be used in for loop
        var counter: Int           // to be used to keep track of factors the input number has
        var numToCheck = inputBox.text.toInt() // to be used in prime number algorithm
        
        // for loop to check if input has factors between 2 and numToCheck/2
        // divided by 2 because if it does, it will reflect 2 and half of numToCheck
        // example numTocheck = 8. Half ot it is 4. factor list : 1 2 4 8. 
        
        if (numToCheck != nil) {  // check that user put in a number
        
            if (numToCheck! > 1) { // check that number is positive
                
                if (numToCheck! == 2 || numToCheck! == 3) {
                    outMessage.text = "The number is Prime"
                }
            
                for (i = 2 ; i <= numToCheck!/2 ; ++i) {
                    // won't work for 1, 2 or 3 as numToCheck/2 = 1 and the loop won't run. Catered for in if-statement above

                    if (numToCheck! % i == 0) {
                        // Number is not prime
                        outMessage.text = "The number is not Prime"
                        break
                    }
            
                    if (i == numToCheck!/2) {
                        outMessage.text = "The number is Prime"
                    }
                }
            } else if (numToCheck! == 1) { // checking for input of 1
                outMessage.text = "1 is not prime"
            } else {
                outMessage.text = "Please enter a positive number"
            }
            
        } else {
            outMessage.text = "Please enter a number"
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

