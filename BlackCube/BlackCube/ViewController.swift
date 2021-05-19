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
    
    @IBAction func blackCube(_ sender: UIButton) {
       
       let size = CGSize(width: 100, height: 100)
        let minX = size.width / 2
        let maxX = view.frame.width - size.width / 2
        let xPos = CGFloat.random(in: minX...maxX)
        let minY = view.safeAreaInsets.top + size.width / 2
        let maxY = view.frame.height - view.safeAreaInsets.top - size.width / 2
        let yPos = CGFloat.random(in: minY...maxY)
        sender.center = CGPoint(x: xPos, y: yPos)
         counter += 1
        counterLabel.text = "\(counter)"
        
    }
   

}

