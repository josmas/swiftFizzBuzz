//
//  GameTests.swift
//  FizzBuzz
//
//  Created by Jose Dominguez on 15/01/2016.
//  Copyright © 2016 Jos. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {

    let game = Game()

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }

    func testOnPlayScoreIncremented() {
        game.play("1")
        XCTAssertTrue(game.score == 1)
    }

    func testIfMoveIsRight() {
        game.score = 2
        let result = game.play("Fizz")
        XCTAssertEqual(result, true)
    }

    func testIfMoveIsWrong() {
        game.score = 1
        let result = game.play("Fizz")
        XCTAssertEqual(result, false)
    }

    func testIfNumberMoveWrong() {
        game.score = 2
        let result = game.play("3")
        XCTAssertEqual(result, false)
    }

    func testIfFizzBuzzMoveRight() {
        game.score = 14
        let result = game.play("FizzBuzz")
        XCTAssertEqual(result, true)
    }
}
