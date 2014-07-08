//
//  SecondViewController.swift
//  To do List
//
//  Created by Mihir Kelkar on 7/7/14.
//  Copyright (c) 2014 Mihir Kelkar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var tskName: UITextField
    @IBOutlet var tskDesc: UITextField
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //This function is used to make sure that the keyboard returns when I press return. 
    //We can make sure of that by asking the textField to give up its First Responder which is a
    //key board in this case
    func textFieldShouldReturn(textField: UITextField!) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func addtask(sender: UIButton) {
        TaskMgr.addTask(tskName.text, desc:tskDesc.text)
        println("Button was clicked")
        self.view.endEditing(true)
        //Emptying text boxes
        tskName.text = ""
        tskDesc.text = ""
        //
    }
    //writing a function to get rid of keyboards by clicking outside the textbox
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true)
    }

}

