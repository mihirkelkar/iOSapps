//
//  ViewController.swift
//  StopWatch
//
//  Created by Mihir Kelkar on 9/17/14.
//  Copyright (c) 2014 Mihir Kelkar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var time: UILabel!
    var count = 0
    var timer = NSTimer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func cancelButtn(sender: AnyObject) {
        timer.invalidate()
        count = 0
        time.text = "\(count)"
        println("I was called. Show some resepct")
    }
    @IBAction func playButtn(sender: AnyObject) {
        if count == 0{
          timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
        }
    }
    
    @IBAction func pauseButtn(sender: AnyObject) {
      timer.invalidate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func result(){
        count++
        time.text = "\(count)"
    }


}

