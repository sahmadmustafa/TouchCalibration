//
//  calbrateball.swift
//  Calibration
//
//  Created by sid on 4/14/22.
//

import Foundation

import UIKit
import Foundation

class calbrateball: UIViewController {

    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var arrowImage: UIImageView!
     var strValue: String!
    
    //timer
    
    var counter = 0
    var timer = Timer()
    var timer2 = Timer()

    @IBOutlet weak var label: UILabel!

    // start timer
    @IBAction func startTimerButtonTapped(sender: UIButton) {
       
         counter = 0

        timer.invalidate() // just in case this button is tapped multiple times
        
        timer2.invalidate() // just in case this button is tapped multiple times

        // start the timer
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
        timer2 = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(timerActionStopFiveSecond), userInfo: nil, repeats: false)

    }

    // stop timer
    @IBAction func cancelTimerButtonTapped(sender: UIButton) {
        timer.invalidate()
    }

    // called every time interval from the timer
    @objc func timerAction() {
        counter += 1
        label.text = "\(counter) Sec"
    }
    @objc func timerActionStopFiveSecond() {
        timer.invalidate()
        timer2.invalidate()

        
        
        let alertController = UIAlertController(title: "Snapshot Name", message: "Please add snapshot of recorded force/weight for further record", preferredStyle: UIAlertController.Style.alert)
        alertController.addTextField { (textField : UITextField!) -> Void in
               textField.placeholder = "Enter Snapshot Name"
           }
        let saveAction = UIAlertAction(title: "Save", style: UIAlertAction.Style.default, handler: { [self] alert -> Void in
               let firstTextField = alertController.textFields![0] as UITextField
//               let secondTextField = alertController.textFields![1] as UITextField
           
            let userDefaults = UserDefaults.standard

            var strings: [String] = userDefaults.object(forKey: "SnapShotNames") as? [String] ?? []
            var strings2: [String] = userDefaults.object(forKey: "SnapShotValues") as? [String] ?? []
            strings.append(firstTextField.text!)
            strings2.append(strValue!)
            
            userDefaults.set(strings, forKey: "SnapShotNames")
            userDefaults.set(strings2, forKey: "SnapShotValues")

        })
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: {
               (action : UIAlertAction!) -> Void in })
//        alertController.addTextField { (textField : UITextField!) -> Void in
//               textField.placeholder = "Enter Snapshot Name"
//           }
//           
           alertController.addAction(saveAction)
           alertController.addAction(cancelAction)
           
        self.present(alertController, animated: true, completion: nil)
        /*
//        @IBAction func addButtonClicked(sender : AnyObject){
        let alertController = UIAlertController(title: "Add Snapshot Name", message: "", preferredStyle: UIAlertController.Style.alert)
        alertController.addTextField { (textField : UITextField!) -> Void in
                textField.placeholder = "Snapshot Name"
            }
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { action -> Void in
              //cancel code
          }
          alertController.addAction(cancelAction)
//        let saveAction: UIAlertAction = UIAlertAction(title: "Save", style: .default) { action -> Void in
//              //cancel code
//          }
          alertController.addAction(cancelAction)
//            alertController.addAction(saveAction)
//            alertController.addAction(cancelAction)
            
        self.present(alertController, animated: true, completion: nil)
        
        */
        }
        //        counter += 1
//        label.text = "\(counter)"

    
    //here end
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        forceLabel.adjustsFontSizeToFitWidth = true
//        arrowImage.translatesAutoresizingMaskIntoConstraints = false
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
                  
                    let touch1 = touches.first as? UITouch

//                    var currentPoint = touch1?.location(in: view)
//                    currentPoint?.x = arrowImage.center.x
//
//                    arrowImage.center = currentPoint!
                    
                    
                    if touch.force >= touch.maximumPossibleForce {
//                        forceLabel.text = "385 + grams"
                        forceLabel.text = "Maximum Force Applied"
                        strValue = "Maximum Force Applied"

                        let frameSize: CGPoint = CGPoint(x: UIScreen.main.bounds.size.width*0.5,y: UIScreen.main.bounds.size.height*0.5)

                     //   let theCenter = self.view.frame.size/2
//                        var currentPoint = touch.location(in: view)
//
//                        currentPoint.y = frameSize.y + 30
//                        arrowImage.center = currentPoint

                    } else {
                        let force = touch.force/touch.maximumPossibleForce
                        let grams = force * 385
                        let roundGrams = Int(grams)
                        forceLabel.text = "\(force) Newton"
strValue = "\(force) Newton"
//                        forceLabel.text = "\(roundGrams) grams"
                        print("\(roundGrams) Grams")
                        
                        view1.isHidden = true
                        view2.isHidden = true
                        view3.isHidden = true

                        var frameSize: CGPoint = CGPoint(x: UIScreen.main.bounds.size.width*0.5,y: UIScreen.main.bounds.size.height*0.5)

                        frameSize.y = frameSize.y + 60
                        var currentPoint = touch.location(in: view)
                        currentPoint.y = frameSize.y -  CGFloat(force*190)
                        currentPoint.x = 60.0
                        arrowImage.center = currentPoint

                        
                        if(roundGrams<20)
                        {
//                            var midY = CGRectGetMidY(self.view.bounds)
                            
//                            let frameSize: CGPoint = CGPoint(x: UIScreen.main.bounds.size.width*0.5,y: UIScreen.main.bounds.size.height*0.5)
//
//                         //   let theCenter = self.view.frame.size/2
//                            currentPoint.y = frameSize.y + 60
//                            currentPoint.x = 60.0
//                            arrowImage.center = currentPoint

                        }
                        else
                        {
                        if(roundGrams>50)
                        {
                            view1.isHidden = false
                            view2.isHidden = true
                            view3.isHidden = true

                        }
                        if(roundGrams>120)
                        {
                            view1.isHidden = true
                            view2.isHidden = false
                            view3.isHidden = true

                        }
                      
                        if(roundGrams>200)
                        {
                            view1.isHidden = true
                            view2.isHidden = true
                            view3.isHidden = false

                        }
                        }
                    }
                }
            }
        }
    }
    
//    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
//        forceLabel.text = "0 gram"
//    }
//
    override  func touchesEnded(_ touches: Set<UITouch>,
                 with event: UIEvent?)
    {
        forceLabel.text = "0 gram"

    }
}

extension CGRect {
    var center: CGPoint { .init(x: midX, y: midY) }
}
