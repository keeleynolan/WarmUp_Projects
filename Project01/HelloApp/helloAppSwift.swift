//
//  ViewController.swift
//  helloApp
//
//  Created by Keeley Nolan on 3/15/16.
//  Copyright © 2016 Keeley Nolan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var inputName: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        //Handle the user input
        inputName.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func resetButton(sender: AnyObject) {
        
        //put everything back to it's intial/default value
        answerLabel.text = "What is your name?"
        inputName.text = ""
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        //close the keyboard if the user has input and entered a value.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
       
         //optional chaining to unwrap name if it has a value
            if let name = inputName.text {
                print(name)
                answerLabel.text = "Hello, \(name), nice to meet you!"
            }
            else {
                print("nothing to see here")
        }
    }
}

