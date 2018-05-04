//
//  Concentration.swift
//  Concentration
//
//  Created by Andrew Campbell on 3/25/18.
//  Copyright © 2018 Andrew Campbell. All rights reserved.
//

import Foundation

class Concentration {
    
    var indexOfOneAndOnlyFaceUpCard: Int?
    
    var cards = [Card]()
    
    func ChooseCard (at index: Int) {
        if !cards[index].isMatched {
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceup = true
                indexOfOneAndOnlyFaceUpCard = nil
            } else {
                for flipDownIndex in cards.indices {
                    cards [flipDownIndex].isFaceup = false
                }
                cards[index].isFaceup = true
                indexOfOneAndOnlyFaceUpCard = index
            }
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









