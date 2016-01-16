//
//  Game.swift
//  FizzBuzz
//
//  Created by Jose Dominguez on 15/01/2016.
//  Copyright © 2016 Jos. All rights reserved.
//

import Foundation

class Game: NSObject {
    var score: Int
    let brain: Brain

    override init() {
        score = 0
        brain = Brain()
        super.init()
    }

    func play(move: String) -> Bool {

        let result = brain.check(score + 1)
        if result == move {
            score++
            return true
        }
        return false
    }
}