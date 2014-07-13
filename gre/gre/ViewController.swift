//
//  ViewController.swift
//  gre
//
//  Created by Mihir Kelkar on 7/12/14.
//  Copyright (c) 2014 Mihir Kelkar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var wordlist : Dictionary<String, String> = [
        "Supine": "Lying on the back",
        "Recalcitrant" : "Resistant to Authority",
        "Obstinate" : "Unwilling to give up old methods",
        "Acrid" : "Sharp, Pungent",
        "Boorish": "Ill mannered",
        "Heresy" : "Against Orthodox Opinion",
        "Ornate" : "Highly Decorated",
        "Ambivalence":"Lack of Clarity",
        "Capacious":"Spacious",
        "Parsimonious": "Stingy",
        "Ameliorate":"Make Better",
        "Alarcity": "Cheerfullness",
        "El Dorado (esp)" : "City of Gold",
        "Precocious":"Too matured for one's age",
        "Xenophobia": "Fear of foreigners",
        "Amiable":"Friendly",
        "Contencious":"Controversial",
        "Sardonic":"Cynical"
    ]

    @IBOutlet var word: UILabel
    @IBOutlet var meaning: UITextView
    override func viewDidLoad() {
        super.viewDidLoad()
        var divider = Array(wordlist.keys).count;
        // Do any additional setup after loading the view, typically from a nib.
       var number = Int(arc4random_uniform(UInt32(divider)))
        println("\(number)")
        word.text = Array(wordlist.keys)[number]
        meaning.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showMeaning(sender: AnyObject) {
        println("Button Clicked")
        if meaning.text == ""{
            meaning.text = wordlist[word.text]
        }
        else{
            meaning.text = ""
        }
    }
    @IBAction func swipeRight(sender: AnyObject) {
        println("Swiping Right")
        var divider = Array(wordlist.keys).count;
        // Do any additional setup after loading the view, typically from a nib.
        var number = Int(arc4random_uniform(UInt32(divider)))
        println("\(number)")
        word.text = Array(wordlist.keys)[number]
        meaning.text = ""
    }

}

