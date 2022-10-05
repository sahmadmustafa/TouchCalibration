//
//  ViewController.swift
//  Scale
//
//  Created by Maxime Defauw on 02/11/15.
//  Copyright © 2015 Maxime Defauw. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var forceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        forceLabel.adjustsFontSizeToFitWidth = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    override func touchesBegan(touches: Set, withEvent event: UIEvent) {
    
    
    override func touchesMoved(_ touches: Set<UITouch>,
                               with event: UIEvent?) {
        if let touch = touches.first {
            if #available(iOS 9.0, *) {
                if traitCollection.forceTouchCapability == UIForceTouchCapability.available {
                    print("\(touch.force)")
                    if touch.force >= touch.maximumPossibleForce {
                        forceLabel.text = "385+ grams"
                    } else {
                        let force = touch.force/touch.maximumPossibleForce
                        let grams = force * 385
                        let roundGrams = Int(grams)
                        forceLabel.text = "\(roundGrams) grams"
                        print("\(roundGrams) grams")
                    }
                }
            }
        }
    }
    
   

    override  func touchesEnded(_ touches: Set<UITouch>,
                 with event: UIEvent?)
    {
        forceLabel.text = "0 gram"

    }
}

