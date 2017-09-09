//
//  PokerSpec.swift
//  tddbc7_poker
//
//  Created by Hidetoshi Mori on 2017/09/09.
//  Copyright © 2017年 Hidetoshi Mori. All rights reserved.
//

@testable import tddbc7_poker

import Quick
import Nimble

/**
 [] カードクラスを作る 構造体で スートとランクを与える
 [] 文字列を取得できるようにする 3♠
 
 */

class ComparingCardSpec: QuickSpec {
    override func spec() {
        describe("カードの比較テスト") {
            context("3♠と10♥のスートを比較する場合") {
                it("比較関数の結果がfalseになること") {
                    let card1 = Card(rank: .r03, suit: .spade)
                    let card2 = Card(rank: .r10, suit: .heart)
                    // ==の比較演算子の定義として、同一の方を比較する仕様になっているので、単なるString比較とは違う
                    expect(card1.suit == card2.suit).to(beFalse())
                }
            }

            context("4♥と10♥のスートを比較する場合") {
                it("比較関数の結果がtrueになること") {
                    let card1 = Card(rank: .r04, suit: .heart)
                    let card2 = Card(rank: .r10, suit: .heart)
                    expect(card1.suit == card2.suit).to(beTrue())
                }
            }
            
            context("4♥と10♥のランクを比較する場合") {
                it("比較関数の結果がfalseになること") {
                    let card1 = Card(rank: .r04, suit: .heart)
                    let card2 = Card(rank: .r10, suit: .heart)
                    expect(card1.rank == card2.rank).to(beFalse())
                }
            }

            context("10♣と10♥のランクを比較する場合") {
                it("比較関数の結果がfalseになること") {
                    let card1 = Card(rank: .r10, suit: .club)
                    let card2 = Card(rank: .r10, suit: .heart)
                    expect(card1.rank == card2.rank).to(beTrue())
                }
            }
        }
    }
}
