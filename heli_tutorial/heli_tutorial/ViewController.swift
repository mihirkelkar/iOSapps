//
//  ViewController.swift
//  heli_tutorial
//
//  Created by Mihir Kelkar on 7/17/14.
//  Copyright (c) 2014 Mihir Kelkar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var introOne: UILabel
    @IBOutlet var introTwo: UILabel
    @IBOutlet var introThree: UILabel
    @IBOutlet var birdStr: UIImageView
    @IBOutlet var obstacleOne: UIImageView
    @IBOutlet var obstacleTwo: UIImageView
    @IBOutlet var score: UILabel
    var scorecount: Int = 0
    //This int will govern as to where the obstacles will be placed
    var random: CGFloat = 0
    //This variable basically decides, how much the bird moves on the y axis since its stable on the x anyway
    var move:CGFloat = 0
    //This boolean basically signifies whether the game has started or not. Its boiler plate value is false. But it gets set to true on view load
    var start: Bool = false
    var timer: NSTimer? = nil
    //When I touch anywhere, the three introduction
    //label go away.
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!){
        //This if case covers the first time I touch the screen after I start a new game. So I set start to 
        //false
        if start == true{
            scorecount = 0
            introOne.hidden = true
            introTwo.hidden = true
            introThree.hidden = true
            //Display obstacles
            obstacleOne.hidden = false
            obstacleTwo.hidden = false
            score.hidden = false
            //Basically use a random number generator to set the height of our obstacle
            random = CGFloat(arc4random() % 75)
            random = random + 150.00
            obstacleOne.center = CGPointMake(320, random)
            //Basically use a random number generator to set the height of our obstacle
            random = CGFloat(arc4random() % 75)
            random = random + 400.00
            obstacleTwo.center = CGPointMake(200, random)
            
            //Start a NSTimer here.
            //This basically makes sure that after every 0.05 seconds of the timer, this function gets called and it adjusts value according to its selector heliMove
            timer = NSTimer.scheduledTimerWithTimeInterval(0.05, target: self, selector: "heliMove", userInfo: nil, repeats: true)
            start = false
            
        }
        //This makes the bird go up since we are subtracting from the center everytime we touch the screen
        move = -25
        birdStr.image = UIImage(named: "bird.png")
        
    }
    
    override func touchesEnded(touches: NSSet!, withEvent event: UIEvent!) {
        //make the bird move down everytime you lift your finger
        //As soon as the bird goes up , in one touch it begins falling down so we change it to a falling bird
        birdStr.image = UIImage(named : "birddown.png")
        move = 17
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Setting obstacle 1 and obstacle 2 to hidden when the view first loads
        obstacleOne.hidden = true
        obstacleTwo.hidden = true
        // Do any additional setup after loading the view, typically from a nib.
        start = true
        score.text = "0"
        score.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func heliMove(){
        
        //Changing the move elements value can affect the position of the bird. 
        //So basically we change the value of move to play the game from the touch began function
        birdStr.center = CGPointMake(birdStr.center.x, birdStr.center.y + move)
        //Move our obstacles to the left 
        obstacleOne.center = CGPointMake(obstacleOne.center.x - 10, obstacleOne.center.y)
        obstacleTwo.center = CGPointMake(obstacleTwo.center.x - 10, obstacleTwo.center.y)
        collision()
        //Making obstacles reappear
        //Basically means that if obstacle's x has moved out of the screen. Run the random number generator again
        if obstacleOne.center.x < 0{
            random = CGFloat(arc4random() % 75)
            random + random + 150.00
            obstacleOne.center = CGPointMake(320, random)
            scorecount += 1
        }
        
        score.text = "\(scorecount)"
        if obstacleTwo.center.x < 0{
            random = CGFloat(arc4random() % 75)
            random = random + 350.00
            obstacleTwo.center = CGPointMake(320, random)
            scorecount += 1
        }
        
        score.text = "\(scorecount)"
    }
    func newGame(){
        obstacleOne.hidden = true
        obstacleTwo.hidden = true
        introOne.hidden = false
        introTwo.hidden = false
        introThree.hidden = false
        birdStr.image = UIImage(named: "bird.png")
        birdStr.hidden = false
        birdStr.center = CGPointMake(20, 193)
        start = true
        score.hidden = true
    }
    
    func endGame(){
        //hide the bird
        birdStr.hidden = true
        score.hidden = true
        // Stop the timer
        timer!.invalidate()
        //Now after a 5 second delay, invoke the new game
        newGame()
        introThree.text = "High Score : \(scorecount)"
    }

    func collision(){
        if CGRectIntersectsRect(birdStr.frame, obstacleOne.frame){
            endGame()
        }
        if CGRectIntersectsRect(birdStr.frame, obstacleTwo.frame){
            endGame()
        }
        if birdStr.center.y > 430 || birdStr.center.y < 20{
            endGame()
        }
        
    }

}

