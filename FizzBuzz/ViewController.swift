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
    var gameScore : Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func play(move: String) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }

        let response = unwrappedGame.play(move)
        gameScore = response.score
    }


}

