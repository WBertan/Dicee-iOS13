//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    private let arrayImageName = ["DiceOne","DiceTwo","DiceThree","DiceFour","DiceFive","DiceSix"]
    private let arrayImageLiteral = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
    
    @IBAction func rollWithNameButtonPressed(_ sender: UIButton) {
        diceImageView1.image = randomNameImage()
        diceImageView2.image = randomNameImage()
    }
    
    private func randomNameImage() -> UIImage? {
//        return UIImage.init(named: arrayImageName[Int.random(in: 0..<6)])
        return UIImage.init(named: arrayImageName.randomElement()!)
    }
    
    @IBAction func rollWithLiteralButtonPressed(_ sender: UIButton) {
        diceImageView1.image = randomLiteralImage()
        diceImageView2.image = randomLiteralImage()
    }
    
    private func randomLiteralImage() -> UIImage {
//        return arrayImageLiteral[Int.random(in: 0..<6)]
        return arrayImageLiteral.randomElement()!
    }
    
}

