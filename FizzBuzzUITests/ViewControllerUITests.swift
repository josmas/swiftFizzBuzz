//
//  ViewControllerUITests.swift
//  FizzBuzz
//
//  Created by Jose Dominguez on 16/01/2016.
//  Copyright © 2016 Jos. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {
    
    override func setUp() {
        super.setUp()

        continueAfterFailure = false
        XCUIApplication().launch()
    }

    override func tearDown() {
        super.tearDown()
    }
    
    func testTapNumberButtonIncrementsScore(){

        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]

        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "1")
    }

    func testTapNumberButtonTwiceIncrementsTo2() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "2")
    }
}
