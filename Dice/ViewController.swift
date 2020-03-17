//
//  ViewController.swift
//  Dice
//
//  Created by student on 2019/3/7.
//  Copyright © 2019年 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["Dice1","Dice2","Dice3","Dice4","Dice5","Dice6"]
    var diceIndex1 : Int = 0
    var diceIndex2 : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImage()
    }

    @IBOutlet weak var imgDice1: UIImageView!
    
    @IBOutlet weak var imgDice2: UIImageView!
    @IBAction func rollDice(_ sender: Any) {
        diceIndex1 = Int(arc4random_uniform(UInt32(6)))
        //print("Dice1:\(diceIndex1)")
        imgDice1.image = UIImage(named: diceArray[diceIndex1])
        diceIndex2 = Int(arc4random_uniform(UInt32(6)))
        //print("Dice2:\(diceIndex2)")
        imgDice2.image = UIImage(named: diceArray[diceIndex2])
    }
    
    func updateDiceImage(){
        diceIndex1 = Int(arc4random_uniform(UInt32(diceArray.count)))
        diceIndex2 = Int(arc4random_uniform(UInt32(diceArray.count)))
        
        imgDice1.image = UIImage(named: diceArray[diceIndex1])
        imgDice2.image = UIImage(named: diceArray[diceIndex2])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
//        if motion == UIEvent.EventSubtype.motionShake{
//            updateDiceImage()
//        }
        
        //簡寫法
        if motion == .motionShake{
            updateDiceImage()
        }
    }

}

