//
//  ViewController.swift
//  calculator
//
//  Created by Mihir Kelkar on 7/9/14.
//  Copyright (c) 2014 Mihir Kelkar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var mainDisplay: UILabel
    @IBOutlet var opDisplay: UILabel
    var lastnumber: Int = 0
    var nextnumber: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func changeText(number: String){
        if mainDisplay.text == "0"{
            mainDisplay.text = number
        }
        else{
            mainDisplay.text = mainDisplay.text + number
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func numberOne(sender: AnyObject) {
        println("number 1 was clicked")
        changeText("1")
    }

    @IBAction func numberTwo(sender: AnyObject) {
        println("number 2 was clicked")
        changeText("2")
    }
    @IBAction func numberThree(sender: AnyObject) {
        println("number 3 was clicked")
        changeText("3")
    }
    @IBAction func numberFour(sender: AnyObject) {
        println("number 4 was clicked")
        changeText("4")
    }
    @IBAction func numberFive(sender: AnyObject) {
        println("number 5 was clicked")
        changeText("5")
    }
    @IBAction func numberSix(sender: AnyObject) {
        println("number 6 was clicked")
        changeText("6")
    }
    
    @IBAction func numberSeven(sender: AnyObject) {
        println("number 7 was clicked")
        changeText("7")
    }
    
    @IBAction func numberEight(sender: AnyObject) {
        println("number 8 was clicked")
        changeText("8")
    }
    
    @IBAction func numberNine(sender: AnyObject) {
        println("number 9 was clicked")
        changeText("9")
    }
    
    @IBAction func calculate(sender: AnyObject) {
        if opDisplay.text == "Addition"{
            mainDisplay.text = "\(lastnumber + mainDisplay.text.toInt()!)"
            opDisplay.text = ""
        }
        else if opDisplay.text == "Subtraction"{
            mainDisplay.text = "\(lastnumber  - mainDisplay.text.toInt()!)"
            opDisplay.text = ""
        }
    }
    @IBAction func numberPlus(sender: AnyObject) {
        println("Plus sign was clicked")
        if opDisplay.text == ""{
            lastnumber = mainDisplay.text.toInt()!
            mainDisplay.text = "0"
            opDisplay.text = "Addition"
        }
        else{
            if opDisplay.text == "Subtraction"{
                lastnumber -= mainDisplay.text.toInt()!
                mainDisplay.text = "0"
            }
            else if opDisplay.text == "Addition"{
                lastnumber += mainDisplay.text.toInt()!
                mainDisplay.text = "0"
            }
            opDisplay.text = "Addition"
        }
        
        
    }
    
    @IBAction func numberMinus(sender: AnyObject){
        println("Minus sign was clicked")
        if opDisplay.text == ""{
            lastnumber = mainDisplay.text.toInt()!
            mainDisplay.text = "0"
            opDisplay.text = "Subtraction"
        }
        else{
            if opDisplay.text == "Subtraction"{
                lastnumber -= mainDisplay.text.toInt()!
                mainDisplay.text = "0"
            }
            else if opDisplay.text == "Addition"{
                lastnumber += mainDisplay.text.toInt()!
                mainDisplay.text = "0"
            }
            opDisplay.text = "Subtraction"
        }
        
    }
    @IBAction func numberZ(sender: AnyObject) {
        println("number 0 was clicked")
        changeText("0")
    }
    @IBAction func clearAll(sender: AnyObject) {
        println("Screen cleared")
        mainDisplay.text = "0"
        lastnumber = 0
    }
    
}

