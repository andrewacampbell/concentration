//
//  ViewController.swift
//  Concentration
//
//  Created by Andrew Campbell on 2/11/18.
//  Copyright © 2018 Andrew Campbell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flipCount = 0
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        flipCard(withEmoji: "🦉", on: sender)
        
        flipCountLabel.text = String(flipCount)
    }
    
    
    @IBAction func touchSecondCard(_ sender: UIButton) {
        flipCount += 1
        flipCard(withEmoji: "🦄", on: sender)
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.6944040282, blue: 0.3931561304, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}

