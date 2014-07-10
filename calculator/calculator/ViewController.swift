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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func numberOne(sender: AnyObject) {
        println("number 1 was clicked")
        mainDisplay.text = mainDisplay.text + "1"
    }

    @IBAction func numberTwo(sender: AnyObject) {
        println("number 2 was clicked")
        mainDisplay.text = mainDisplay.text + "2"
    }
    @IBAction func numberThree(sender: AnyObject) {
        println("number 3 was clicked")
        mainDisplay.text = mainDisplay.text + "3"
    }
    @IBAction func numberFour(sender: AnyObject) {
        println("number 4 was clicked")
        mainDisplay.text = mainDisplay.text + "4"
    }
    @IBAction func numberFive(sender: AnyObject) {
        println("number 5 was clicked")
        mainDisplay.text = mainDisplay.text + "5"
    }
    @IBAction func numberSix(sender: AnyObject) {
        println("number 6 was clicked")
        mainDisplay.text = mainDisplay.text + "6"
    }
    
    @IBAction func numberSeven(sender: AnyObject) {
        println("number 7 was clicked")
        mainDisplay.text = mainDisplay.text + "7"
    }
    
    @IBAction func numberEight(sender: AnyObject) {
        println("number 8 was clicked")
        mainDisplay.text = mainDisplay.text + "8"
    }
    
    @IBAction func numberNine(sender: AnyObject) {
        println("number 9 was clicked")
        mainDisplay.text = mainDisplay.text + "9"
    }
    
    @IBAction func numberPlus(sender: AnyObject) {
        println("Plus sign was clicked")
        mainDisplay.text = mainDisplay.text  + " + "
    }
    
    @IBAction func numberMinus(sender: AnyObject){
        println("Minus sign was clicked")
        mainDisplay.text = mainDisplay.text + " - "
    }
    @IBAction func numberZ(sender: AnyObject) {
        println("number 0 was clicked")
        mainDisplay.text = mainDisplay.text + "0"
    }
    
}

