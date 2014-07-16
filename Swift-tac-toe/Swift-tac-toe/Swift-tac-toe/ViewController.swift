//
//  ViewController.swift
//  Swift-tac-toe
//
//  Created by Mihir Kelkar on 7/14/14.
//  Copyright (c) 2014 Mihir Kelkar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var image1: UIImageView
    @IBOutlet var image2: UIImageView
    @IBOutlet var image3: UIImageView
    @IBOutlet var image4: UIImageView
    @IBOutlet var image5: UIImageView
    @IBOutlet var image6: UIImageView
    @IBOutlet var image7: UIImageView
    @IBOutlet var image8: UIImageView
    @IBOutlet var image9: UIImageView
    
    @IBOutlet var btn1: UIButton
    @IBOutlet var btn2: UIButton
    @IBOutlet var btn3: UIButton
    @IBOutlet var btn4: UIButton
    @IBOutlet var btn5: UIButton
    @IBOutlet var btn6: UIButton
    @IBOutlet var btn7: UIButton
    @IBOutlet var btn8: UIButton
    @IBOutlet var btn9: UIButton
    
    @IBOutlet var resetBtn: UIButton
    
    
    @IBOutlet var newWord: UILabel
    var plays = Dictionary<Int, Int>()
    var gameDone = false
    var aiDeciding = false
    
    
    @IBAction func reset(sender: AnyObject) {
        plays = [:]
        image1.image = nil
        image2.image = nil
        image3.image = nil
        image4.image = nil
        image5.image = nil
        image6.image = nil
        image7.image = nil
        image8.image = nil
        image9.image = nil
        gameDone = false
        newWord.hidden = true
        newWord.text = ""
        resetBtn.hidden = true
        
    }
    
    
    func checkforWin(){
        var turns = ["Me" : 1, "You" : 2]
        for (key, value) in turns{
            if (plays[1] == value && plays[2] == value && plays[3] == value) ||
            (plays[4] == value && plays[5] == value && plays[6] == value) ||
            (plays[7] == value && plays[8] == value && plays[9] == value) ||
            (plays[1] == value && plays[5] == value && plays[9] == value) ||
            (plays[3] == value && plays[5] == value && plays[7] == value) ||
            (plays[1] == value && plays[4] == value && plays[7] == value) ||
            (plays[2] == value && plays[5] == value && plays[8] == value) ||
            (plays[3] == value && plays[6] == value && plays[9] == value){
                newWord.hidden = false
                newWord.text = "Looks like \(key) Won !"
                resetBtn.hidden = false
                gameDone = true
            }
        }
    }
  
    func aiTurn(){
    
    }
    
    func setImageforspot(tag: Int, player: Int){
        println("Entered inside the image setter function")
        var playermark = player == 1 ? "x.jpg" : "o.jpg"
        println("\(playermark)")
        plays[tag] = player
        switch tag{
            case 1:
                image1.image = UIImage(named:playermark)
                println("Image 1 set")
            case 2:
                image2.image = UIImage(named:playermark)
                println("Image 2 set")
            case 3:
                image3.image = UIImage(named:playermark)
                println("Image 3 set")
            case 4:
                image4.image = UIImage(named:playermark)
                println("Image 4 set")
            case 5:
                image5.image = UIImage(named:playermark)
                println("Image 5 set")
            case 6:
                image6.image = UIImage(named:playermark)
                println("Image 6 set")
            case 7:
                image7.image = UIImage(named:playermark)
                println("Image 7 set")
            case 8:
                image8.image = UIImage(named:playermark)
                println("Image 8 set")
            case 9:
                image9.image = UIImage(named:playermark)
                println("Image 9 set")
            default:
                image1.image = UIImage(named:playermark)
        }
    }
    
    
    @IBAction func UIButtonClicked(sender: UIButton){
        newWord.hidden = true
        if !plays[sender.tag] && !aiDeciding && !gameDone{
            setImageforspot(sender.tag, player: 1)
        }
    
        checkforWin()
        aiTurn()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

