//
//  ViewControllerUnitTests.swift
//  FizzBuzz
//
//  Created by Jose Dominguez on 16/01/2016.
//  Copyright © 2016 Jos. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerUnitTests: XCTestCase {

    var viewController : ViewController!
    var game = Game()

    override func setUp() {
        super.setUp()

        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        viewController = storyboard.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
        UIApplication.sharedApplication().keyWindow!.rootViewController = viewController
        
        let _ = viewController.view
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testHasAGame() {
        XCTAssertNotNil(viewController.game)
    }

    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(Move.Number)
        XCTAssertNotNil(response.right)
    }

    func testPlayShouldReturnNewScore() {
        let response = game.play(Move.Number)
        XCTAssertNotNil(response.score)
    }

    func testOnWrongMoveScoreNotIncremented() {
        viewController.play(Move.Fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 0)
    }

}
