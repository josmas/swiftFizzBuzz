//
//  BrainTests.swift
//  FizzBuzz
//
//  Created by Jose Dominguez on 15/01/2016.
//  Copyright © 2016 Jos. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class BrainTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testIsDivisibleByThree(){
        let brain = Brain()

        let result = brain.isDivisibleByThree(3);
        XCTAssertEqual(result, true)

        let result2 = brain.isDivisibleByThree(1);
        XCTAssertEqual(result2, false)
    }

    func testIsDivisibleByFive(){
        let brain = Brain()

        let result = brain.isDivisibleByFive(5);
        XCTAssertEqual(result, true)

        let result2 = brain.isDivisibleByFive(3);
        XCTAssertEqual(result2, false)
    }
}
