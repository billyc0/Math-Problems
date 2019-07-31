//
//  ViewController.swift
//  New Math Quizzes
//
//  Created by Billy Chandler on 7/30/19.
//  Copyright © 2019 Billy Chandler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        score_Lbl.text = "Score: \(score)"
        
        // Declaring the math problem types to the array
        funcTypes = ["Add", "Sub", "Mult", "Div"]
        
        // Assigning a random integer to the pointer
        getFuncType = Int.random(in: 0..<3)
        
        getMathProb(pointer: getFuncType)
    }
    
    func getMathProb(pointer: Int) {
        
        choices = [0, 0, 0]
        
        if (funcTypes[getFuncType] == "Add") {
            
            num1 = Int.random(in: 0..<100)
            num2 = Int.random(in: 0..<100)
            ans = num1 + num2
            
            mathProb_Lbl.text = "\(num1) + \(num2)"
            
            ansInChoices = Int.random(in: 0..<3)
            
            choices[ansInChoices] = ans
            
            for i in 0...2 {
                
                //print("Number \(i)")
                
                if (i != ansInChoices) {
                    
                   choices[i] = Int.random(in: 0..<198)
                    
                    while (choices[i] == ans) {
                        
                        choices[i] = Int.random(in: 0..<198)
                    }
                }
                
            }
            
            ans1_Lbl.text = "\(choices[0])"
            ans2_Lbl.text = "\(choices[1])"
            ans3_Lbl.text = "\(choices[2])"
            
        }
        else if (funcTypes[getFuncType] == "Sub") {
            
            num1 = Int.random(in: 0..<100)
            num2 = Int.random(in: 0..<100)
            
            while (num2 > num1) {
                
                num2 = Int.random(in: 0..<100)
            }
            
            ans = num1 - num2
            
            mathProb_Lbl.text = "\(num1) - \(num2)"
            
            ansInChoices = Int.random(in: 0..<3)
            
            choices[ansInChoices] = ans
            
            for i in 0...2 {
                
                //print("Number \(i)")
                
                if (i != ansInChoices) {
                    
                    choices[i] = Int.random(in: 0..<100)
                    
                    while (choices[i] == ans) {
                        
                        choices[i] = Int.random(in: 0..<100)
                    }
                }
                
            }
            
            ans1_Lbl.text = "\(choices[0])"
            ans2_Lbl.text = "\(choices[1])"
            ans3_Lbl.text = "\(choices[2])"
            
        }
        else if (funcTypes[getFuncType] == "Mult") {
            
            num1 = Int.random(in: 0..<13)
            num2 = Int.random(in: 0..<13)
            ans = num1 * num2
            
            mathProb_Lbl.text = "\(num1) * \(num2)"
            
            ansInChoices = Int.random(in: 0..<3)
            
            choices[ansInChoices] = ans
            
            for i in 0...2 {
                
                //print("Number \(i)")
                
                if (i != ansInChoices) {
                    
                    choices[i] = Int.random(in: 0..<145)
                    
                    while (choices[i] == ans) {
                        
                        choices[i] = Int.random(in: 0..<145)
                    }
                }
                
            }
            
            ans1_Lbl.text = "\(choices[0])"
            ans2_Lbl.text = "\(choices[1])"
            ans3_Lbl.text = "\(choices[2])"
            
        }
        else if (funcTypes[getFuncType] == "Div") {
            
            num1 = Int.random(in: 1..<13)
            num2 = Int.random(in: 1..<13)
            ans = num1 * num2
            
            num1 = ans
            ans = num1 / num2
            
            mathProb_Lbl.text = "\(num1) / \(num2)"
            
            ansInChoices = Int.random(in: 0..<3)
            
            choices[ansInChoices] = ans
            
            for i in 0...2 {
                
                //print("Number \(i)")
                
                if (i != ansInChoices) {
                    
                    choices[i] = Int.random(in: 0..<145)
                    
                    while (choices[i] == ans) {
                        
                        choices[i] = Int.random(in: 0..<145)
                    }
                }
                
            }
            
            ans1_Lbl.text = "\(choices[0])"
            ans2_Lbl.text = "\(choices[1])"
            ans3_Lbl.text = "\(choices[2])"
            
        }
        
    }

    var score = 0
    
    // An empty array for the math problem type
    var funcTypes = [String]()
    
    // An empty variable for a random integer that point to a math problem type
    var getFuncType = 0
    
    // Three possible answer choices to a problem
    var choices = [Int]()
    
    var ansInChoices = 0
    
    var num1 = 0
    var num2 = 0
    var ans = 0
    
    @IBOutlet weak var mathProb_Lbl: UILabel!
    
    @IBOutlet weak var ans1_Lbl: UILabel!
    @IBOutlet weak var ans2_Lbl: UILabel!
    @IBOutlet weak var ans3_Lbl: UILabel!
    
    @IBOutlet weak var msg_Lbl: UILabel!
    
    @IBOutlet weak var score_Lbl: UILabel!
    
    @IBOutlet weak var ans1_Btn: UIButton!
    
    @IBAction func ans1_Btn(_ sender: Any) {
        
        if (choices[0] == ans) {
            
            score = score + 1
            
            score_Lbl.text = "Score: \(score)"
            
            msg_Lbl.text = ""
            
            getFuncType = Int.random(in: 0..<3)
            
            getMathProb(pointer: getFuncType)
        }
        else {
            
            msg_Lbl.text = "Wrong answer! Try again.."
        }
    }
    
    @IBAction func ans2_Btn(_ sender: Any) {
        
        if (choices[1] == ans) {
            
            score = score + 1
            
            score_Lbl.text = "Score: \(score)"
            
            msg_Lbl.text = ""
            
            getFuncType = Int.random(in: 0..<3)
            
            getMathProb(pointer: getFuncType)
        }
        else {
            
            msg_Lbl.text = "Wrong answer! Try again.."
        }
    }
    
    @IBAction func ans3_Btn(_ sender: Any) {
        
        if (choices[2] == ans) {
            
            score = score + 1
            
            score_Lbl.text = "Score: \(score)"
            
            msg_Lbl.text = ""
            
            getFuncType = Int.random(in: 0..<3)
            
            getMathProb(pointer: getFuncType)
        }
        else {
            
            msg_Lbl.text = "Wrong answer! Try again.."
        }
    }
    
    @IBAction func newProb_btn(_ sender: Any) {
        
        msg_Lbl.text = ""
        
        getFuncType = Int.random(in: 0..<3)
        
        getMathProb(pointer: getFuncType)
        
    }
    
    @IBAction func resetScore_btn(_ sender: Any) {
        
        score = 0
        
        score_Lbl.text = "Score: \(score)"
        
        msg_Lbl.text = ""
        
        getFuncType = Int.random(in: 0..<3)
        
        getMathProb(pointer: getFuncType)
    }
    
}

