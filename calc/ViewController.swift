//
//  ViewController.swift
//  calc
//
//  Created by MacStudent on 2019-10-30.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let PLUS = 10
    let MINUS = 11
    let MULTIPLY = 12
    let DIVIDE = 13

 
    
    
    
    
    @IBOutlet weak var label: UILabel!
    var num1 : Double = 0
    var num2 : Double = 0
    var operand : NSInteger = 0
    var answer : Double = 0.0
    var theNumber : String = "0"
    
    
    @IBAction func setop(Sender:UIButton){
        
        if Sender.tag >= 10 && Sender.tag <= 13 {
           
            operand = Sender.tag
            
            saveNum1()
            
        }
        
        
        if Sender.tag == -2{
            theNumber = "0"
            printnum()
        }
    }
    
    
    
    
    
    func saveNum1(){
        
        num1 = Double(theNumber)!
        theNumber = "0"
        printnum()
    }
    
    

    
    
    
    @IBAction func calculate(Sender:UIButton){
        
      
        num2 = Double(theNumber)!
        print("num2 \(num2)")
        
        if operand == PLUS{
            answer = Double(num1 + num2)
        }
        
        if operand == MINUS{
            
            answer = Double(num1 - num2)
        }
 
        if operand == MULTIPLY{
            answer = Double(num1 * num2)
        }
    
        if operand == DIVIDE{
            
            answer = Double(num1 / num2)
        }
    
        num1 = 0
        num2 = 0
        
        operand = PLUS
        
        theNumber = String(answer)
        printnum()
        answer = 0.0
        theNumber = "0"
        
    }
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        printnum()
    }

    //sets number
    func printnum(){
        
        label.text = theNumber
        
    }
    
    
    //gets from users and sets to number
    @IBAction func pressnum(Sender:UIButton){
        
        if Sender.tag >= 0 && Sender.tag <= 9 {
            
            print("num1 \(Sender.tag) ")
           
            theNumber += String(Sender.tag)
            
            printnum()
        }
        
    }
    
   
    
    
    
    
    
    
    
    @IBAction func dot(_ sender: Any) {
        
        if theNumber.contains(".") {
            
            
            
        }
        else{
            
        theNumber += "."
        
        printnum()
        
        }
        
    }
    
   
}

