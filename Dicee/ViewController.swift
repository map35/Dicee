//
//  ViewController.swift
//  Dicee
//
//  Created by Mohammad Agung on 25/12/18.
//  Copyright © 2018 Mohammad Agung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    var randomDice1: Int = 0
    var randomDice2: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    func updateDiceImage() {
        randomDice1 = Int.random(in: 0 ... 5)
        randomDice2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDice1])
        diceImageView2.image = UIImage(named: diceArray[randomDice2])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImage()
    }
    
    @IBAction func rollButton(_ sender: Any) {
        updateDiceImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }
}

