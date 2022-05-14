//
//  ViewController.swift
//  homeTask1.2
//
//  Created by Institute Sk on 14.05.22.
//

import UIKit

class ViewController: UIViewController {
    
    var red = true
    var yellow = false
    var green  = false

    @IBOutlet var redLabel: UIView!
    @IBOutlet var yellowLabel: UIView!
    @IBOutlet var greenLabel: UIView!
    @IBOutlet var buttonStart: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundCircle = CGSize(width: 200, height: 200)
        
        redLabel.layer.cornerRadius = backgroundCircle.width / 2
        yellowLabel.layer.cornerRadius = backgroundCircle.width / 2
        greenLabel.layer.cornerRadius = backgroundCircle.width / 2
        buttonStart.layer.cornerRadius = 10
        buttonStart.setTitle("Start", for: .normal)
        
        redLabel.alpha = 0.3
        yellowLabel.alpha = 0.3
        greenLabel.alpha = 0.3
        
    
    }


    @IBAction func actionButton(_ sender: UIButton) {
        
        if red {
            redLabel.alpha = 1
            yellowLabel.alpha = 0.1
            greenLabel.alpha = 0.1
            red = false
            yellow = true
            buttonStart.setTitle("Next yellow", for: .normal)
        } else if yellow {
            redLabel.alpha = 0.1
            yellowLabel.alpha = 1
            greenLabel.alpha = 0.1
            yellow = false
            green = true
            buttonStart.setTitle("Next green", for: .normal)
        } else if green {
            redLabel.alpha = 0.1
            yellowLabel.alpha = 0.1
            greenLabel.alpha = 1
            green = false
            red = true
            buttonStart.setTitle("Next red", for: .normal)
        }
        
    }
}

