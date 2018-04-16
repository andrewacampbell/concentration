//
//  ViewController.swift
//  Concentration
//
//  Created by Andrew Campbell on 2/11/18.
//  Copyright © 2018 Andrew Campbell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //NB: in swift you have to completely initialize something before you can use it.
    lazy var game = Concentration(numberOfPairOfCards: (cardButtons.count + 1) / 2)
    
    var flipCount = 0 {
        //Property observer - everytime the property changes, didset is executed
        didSet {
            flipCountLabel.text = "Flips \(flipCount)"
        }
    }
    
    //array of card buttons
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
            game.ChooseCard(at: cardNumber)
            upDateViewFromModel()
            
        } else {
            
            print("That card is not found")
            
        }
        
    }
    
    func upDateViewFromModel() {
        for index in cardButtons.indices {
            let button = cardButtons[index]
            let card = game.cards[index]
            if card.isFaceup {
                button.setTitle(emoji(for: card), for: UIControlState.normal)
                button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            } else {
                button.setTitle("", for: UIControlState.normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 1, green: 0.6944040282, blue: 0.3931561304, alpha: 0) : #colorLiteral(red: 1, green: 0.6944040282, blue: 0.3931561304, alpha: 1)
            }
        }
    }
    
    var emojiChoices = ["🐔","🙉","🦄","🐳","🐅","🐸","🐥","🐙","🐝"]
    // Define a Dictionary
    var emojii = [Int:String]()
    
    // Do some validations checks and put emoji in dictionary.
    func emoji(for card: Card) -> String {
        
        if emojii[card.identifier] == nil, emojiChoices.count > 0 {
            let randomIndex = Int(arc4random_uniform(UInt32(emojiChoices.count)))
            emojii[card.identifier] = emojiChoices.remove(at: randomIndex)
        }
        
        return emojii[card.identifier] ?? "?"
        
    }
    
    
}






























