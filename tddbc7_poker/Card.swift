//
//  Card.swift
//  tddbc7_poker
//
//  Created by Hidetoshi Mori on 2017/09/09.
//  Copyright © 2017年 Hidetoshi Mori. All rights reserved.
//

import Foundation

struct Card {
    enum Suit : String {
        case spade = "♠"
        case heart = "♥"
        case club = "♣"
        case diamond = "◆"
    }
    
    enum Rank : String {
        case r01 = "A"
        case r02 = "2"
        case r03 = "3"
        case r04 = "4"
        case r05 = "5"
        case r06 = "6"
        case r07 = "7"
        case r08 = "8"
        case r09 = "9"
        case r10 = "10"
        case r11 = "J"
        case r12 = "Q"
        case r13 = "K"
    }
    
    let rank : Rank
    let suit : Suit

    var notation : String {
        return rank.rawValue + suit.rawValue
    }
}

