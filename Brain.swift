//
//  Brain.swift
//  FizzBuzz
//
//  Created by Jose Dominguez on 15/01/2016.
//  Copyright © 2016 Jos. All rights reserved.
//

import Foundation

class Brain: NSObject{

    func isDivisibleBy(divisor :Int, number :Int) -> Bool {
        return number % divisor == 0
    }

    func isDivisibleByThree(number :Int) -> Bool {
        return isDivisibleBy(3, number: number)
    }

    func isDivisibleByFive(number :Int) -> Bool {
        return isDivisibleBy(5, number: number)
    }

    func isDivisibleByFifteen(number :Int) -> Bool {
        return isDivisibleByThree(number) && isDivisibleByFive(number)
    }

    func check(number :Int) -> String {
        if isDivisibleByThree(number) {
            return "Fizz"
        }

        return "Something went wrong!"
    }
}
