//
//  TwoCardPokerSpec.swift
//  tddbc7_poker
//
//  Created by Hidetoshi Mori on 2017/09/09.
//  Copyright © 2017年 Hidetoshi Mori. All rights reserved.
//

@testable import tddbc7_poker

import Quick
import Nimble

/**
[]
 
 */

class TwoCardPokerSpec: QuickSpec {
    override func spec() {
        describe("ツーカードポーカーの役判定テスト") {
            context("2枚のカードが同じ場合") {
                it("例外が発生すること") {
                    let card1 = Card(rank: .r01, suit: .spade)
                    let card2 = Card(rank: .r01, suit: .spade)
                    expect{
                        try TwoCardPoker.judgeHand(card1: card1, card2: card2)
                        }.to(throwError(TwoCardPokerError.sameCard))
                }
            }
            context("2枚のカードが異なる場合") {
                it("例外が発生しないこと") {
                    let card1 = Card(rank: .r01, suit: .spade)
                    let card2 = Card(rank: .r02, suit: .heart)
                    expect{
                        try TwoCardPoker.judgeHand(card1: card1, card2: card2)
                        }.toNot(throwError(TwoCardPokerError.sameCard))
                }
            }
//            context("2枚のカードが同じランクを持つ場合") {
//                it("ペアを返却すること") {
//                    let card1 = Card(rank: .r01, suit: .spade)
//                    let card2 = Card(rank: .r02, suit: .heart)
//                    expect(try! TwoCardPoker.judgeHand(card1: card1, card2: card2)).to(equal(.pair))
//                }
//            }
        }
    }
}
