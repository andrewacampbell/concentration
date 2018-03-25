//
//  Card.swift
//  Concentration
//
//  Created by Andrew Campbell on 3/25/18.
//  Copyright © 2018 Andrew Campbell. All rights reserved.
//

import Foundation

struct Card
{
    // These are created with each new card.
    var isFaceup  = false
    var isMatched = false
    var identifier: Int
    
    // Static are for the type, not the card,
    // but the type of card.
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}

















