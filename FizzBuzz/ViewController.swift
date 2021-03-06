//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Jose Dominguez on 15/01/2016.
//  Copyright © 2016 Jos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var game : Game?
    var gameScore: Int? {
        didSet {
            guard let unwrappedScore = gameScore else {
                print("gameScore is nil")
                return
            }
            numberButton.setTitle("\(unwrappedScore)", forState: .Normal)
        }
    }

    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    @IBOutlet weak var playAgain: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()

        guard let checkedGame = game else {
            print("Game is nil")
            return
        }

        gameScore = checkedGame.score
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func play(move: Move) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }

        let response = unwrappedGame.play(move)
        gameScore = response.score
    }

    @IBAction func buttonTapped(sender: UIButton) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }

        guard let checkedGame = game else {
            print("Game is nil")
            return
        }

        switch sender {
        case numberButton:
            play(Move.Number)
        case fizzButton:
            play(Move.Fizz)
        case buzzButton:
            play(Move.Buzz)
        case fizzBuzzButton:
            play(Move.FizzBuzz)
        case playAgain:
            unwrappedGame.reset()
            gameScore = checkedGame.score
        default:
            print("Invalid selection")
        }
    }

}

