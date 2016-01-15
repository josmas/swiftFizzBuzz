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

    let brain = Brain()

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testIsDivisibleByThree(){
        let result = brain.isDivisibleByThree(3);
        XCTAssertEqual(result, true)

        let result2 = brain.isDivisibleByThree(1);
        XCTAssertEqual(result2, false)
    }

    func testIsDivisibleByFive(){

        let result = brain.isDivisibleByFive(5);
        XCTAssertEqual(result, true)

        let result2 = brain.isDivisibleByFive(3);
        XCTAssertEqual(result2, false)
    }

    func testIsDivisibleByFifteen(){

        let result = brain.isDivisibleByFive(30);
        XCTAssertEqual(result, true)

        let result2 = brain.isDivisibleByFive(51);
        XCTAssertEqual(result2, false)
    }

    func testSayFizz(){
        XCTAssertEqual(brain.check(3), "Fizz")
    }

    func testSayBuzz(){
        XCTAssertEqual(brain.check(5), "Buzz")
    }

    func testSayFizzBuzz(){
        XCTAssertEqual(brain.check(30), "FizzBuzz")
    }

    func testSayNumber(){
        XCTAssertEqual(brain.check(1), "1")
    }
}
