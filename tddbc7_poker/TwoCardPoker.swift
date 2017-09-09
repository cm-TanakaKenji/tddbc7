//
//  TwoCardPoker.swift
//  tddbc7_poker
//
//  Created by Hidetoshi Mori on 2017/09/09.
//  Copyright © 2017年 Hidetoshi Mori. All rights reserved.
//

import Foundation

enum Hand : String {
    case pair = "pair"
}


enum TwoCardPokerError : Error {
    case sameCard
}

class TwoCardPoker {
    static func judgeHand(card1 : Card, card2 : Card) throws -> Int  {
        if card1 == card2 {
            throw TwoCardPokerError.sameCard
        }
        return 0
    }
}
