//
//  GeneratingCardSpec.swift
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
 []
 
 */

class GeneratingCardSpec: QuickSpec {
    override func spec() {
        describe("カードの文字列表記テスト") {
            context("ランクに3, スートに♠を与えた場合") {
                it("カードの文字列表記を取得する, (ex)3♠") {
                    let card = Card(rank: .r03, suit: .spade)
                    expect(card.notation).to(equal("3♠"))
                }
            }
            context("ランクに4, スートに♥を与えた場合") {
                it("カードの文字列表記を取得する, (ex)4♥") {
                    let card = Card(rank: .r04, suit: .heart)
                    expect(card.notation).to(equal("4♥"))
                }
            }
        }
    }
}
