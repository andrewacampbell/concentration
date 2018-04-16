//
//  Concentration.swift
//  Concentration
//
//  Created by Andrew Campbell on 3/25/18.
//  Copyright © 2018 Andrew Campbell. All rights reserved.
//

import Foundation

class Concentration {
    
    
    var cards = [Card]()
    
    func ChooseCard (at index: Int) {
        if cards[index].isFaceup {
            cards[index].isFaceup = false
        } else {
            cards[index].isFaceup = true
        }
    } 
    
    
    init(numberOfPairOfCards: Int) {
        for _ in 1...numberOfPairOfCards {
            let card = Card()
            cards += [card,card]
            
            
        }
        
        // TODO: shuffle card
    }
    
}









