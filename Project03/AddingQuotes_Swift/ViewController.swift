//
//  ViewController.swift
//  addQuotes
//
//  Created by Keeley Nolan on 3/19/16.
//  Copyright © 2016 Keeley Nolan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //labels and textfields from the storyboard
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var aboutLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var authorQuoteLabel: UILabel!
    
    //variables used to keep track of entries
    var counter = 0
    var quote = ""
    var author = ""
   
    //declaring an array with a size of 2
    //doesn't look like fixed sized arrays like in Java
    //initializing the array to contain a few items first so it doesn't thow an exception later.
    var authorQuoteIndex = (["0", "1"])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userInput.delegate = self
        
        //align the text to the center
        //much easier on the eyes
        authorQuoteLabel.textAlignment = .Center
 
        
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        //dismiss the keyboard when finished typing
        userInput.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
       
       //when the counter is 0 then set all the labels to the default and restart.
        if (counter == 0) {
            //userInput.text = "Enter Text Here"
            userInput.textColor = UIColor.grayColor()
            questionLabel.text = ("Tell me something, a quote from a famous author perhaps?")
            authorQuoteLabel.text = ""
        }
    }
    
  
    func textFieldDidEndEditing(textField: UITextField) {
       
        
        //add one to the counter
        counter++
        
        //if there is text in the userInput go ahead pass it to userText, add userText to array at the appropriate index, then show the result.
        if let userText = userInput.text {
            
            if (counter == 1) {
                authorQuoteIndex.insert(userText, atIndex: 0)
              
                userInput.text = ""
                questionLabel.text = "Who said it?"
            }
            if (counter == 2) {
                authorQuoteIndex.insert(userText, atIndex: 1)
                counter = 3
                userInput.text = ""
             }
           
            if (counter == 3) {
            for var i = 0; i < 2; i++ {
               authorQuoteLabel.text = ("So you're telling me, \" \(authorQuoteIndex[0]) \" was said by \(authorQuoteIndex[1])")
                }
                
                authorQuoteIndex.removeAll()
                counter++
                if (counter == 4) {
                    userInput.text = ""
                    questionLabel.text = ""
                    counter = 0
                }
            }
            
           
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

