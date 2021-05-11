//
//  ViewController.swift
//  BlackCube
//
//  Created by Alexey on 11.05.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var counterLabel: UILabel!
    var counter = 0
    
    @IBAction func BlackCube(_ sender: UIButton) {
        let randomWidth = CGFloat(arc4random_uniform(UInt32(self.view.frame.width)))
         let randomHeight = CGFloat(arc4random_uniform(UInt32(self.view.frame.height)))
         sender.center = CGPoint(x: randomWidth, y: randomHeight)
         counter += 1
        counterLabel.text = "\(counter)"
    }
}

