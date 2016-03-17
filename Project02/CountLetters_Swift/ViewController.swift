//
//  ViewController.swift
//  countCharacters
//
//  Created by Keeley Nolan on 3/17/16.
//  Copyright © 2016 Keeley Nolan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var communicateLabel: UILabel!
    @IBOutlet weak var userInput: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userInput.delegate = self
       
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        userInput.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
         userInput.textColor = UIColor.blackColor()
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        
        
        var letterCount = 0
        
        if var inputText = userInput.text {
            inputText = inputText.uppercaseString
            
            for var i = 0; i < inputText.characters.count; i++ {
                
                let textIndex = inputText.startIndex.advancedBy(i)
                let ch : Character = inputText[textIndex]
                if (ch  == "A" || ch == "B" || ch == "C" || ch == "D" || ch == "E" || ch == "F" || ch == "G" || ch == "H" || ch == "I" || ch == "J" || ch == "K" || ch == "L" || ch == "M" || ch == "N" || ch == "O" || ch == "P" || ch == "Q" || ch == "R" || ch == "S" || ch == "T" || ch == "U" || ch == "V" || ch == "W" || ch == "X" || ch == "Y" || ch == "Z") {
                    
                    print("Huzzah")
                    
                    letterCount++
                }
            }
            
                print(letterCount)
                communicateLabel.text = ("Neat!  There are \(letterCount) letters in that string.")
        }
        else {
            print("nothing to see here")
        }
}


    @IBAction func resetAll(sender: AnyObject) {
        communicateLabel.text = ("Hello, please enter a string.  I will count the letters in the string.")
        userInput.text = ("Enter Here")
        userInput.textColor = UIColor.grayColor()
        //userInput.placeholder = userInput.text
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

