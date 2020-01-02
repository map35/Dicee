//
//  ViewController.swift
//  Dicee
//
//  Created by Mohammad Agung on 25/12/18.
//  Copyright © 2018 Mohammad Agung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    swift 4
//    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDice1: Int = 0
    var randomDice2: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImage()
    }
    
    @IBAction func rollButton(_ sender: Any) {
        updateDiceImage()
    }
    
    func updateDiceImage() {
        randomDice1 = Int.random(in: 0...5)
        randomDice2 = Int.random(in: 0...5)
       
//        swift 4
//        diceImageView1.image = UIImage(named: diceArray[randomDice1])
//        diceImageView2.image = UIImage(named: diceArray[randomDice2])
        
//        swift 5
        diceImageView1.image = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")][randomDice1]
        diceImageView2.image = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")][randomDice2]
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }
}

