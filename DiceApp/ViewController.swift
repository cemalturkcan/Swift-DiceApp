//
//  ViewController.swift
//  DiceApp
//
//  Created by Cemal Türkcan on 22.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceLeft: UIImageView!
    @IBOutlet weak var diceRight: UIImageView!
    let images = ["One", "Two", "Three", "Four", "Five", "Six"]
    
    @IBAction func onClickRollButton(_ sender: UIButton) {
        rolDices();
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rolDices();
    }
    
    func rolDices(){
        diceLeft.image = getRandomDiceImage();
        diceRight.image = getRandomDiceImage();
        
    }
    
    func getRandomDiceImage() -> UIImage! {
        return UIImage(named: "Dice" + images.randomElement()!)
    }
    
}

