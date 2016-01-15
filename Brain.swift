//
//  Brain.swift
//  FizzBuzz
//
//  Created by Jose Dominguez on 15/01/2016.
//  Copyright © 2016 Jos. All rights reserved.
//

import Foundation

class Brain: NSObject{

    func isDivisibleByThree(number :Int) -> Bool {
        return number % 3 == 0
    }

    func isDivisibleByFive(number :Int) -> Bool {
        return number % 5 == 0
    }

    func isDivisibleByFifteen(number :Int) -> Bool {
        return isDivisibleByFive(number) && isDivisibleByFive(number)
    }
}
