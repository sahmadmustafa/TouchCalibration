//
//  DrawVC.swift
//  Calibration
//
//  Created by sid on 4/15/22.
//

import Foundation

import UIKit
import Foundation
import QuartzCore


class DrawVC: UIViewController {

   // @IBOutlet weak var forceLabel: UILabel!

    @IBOutlet weak var DrawView1: AASignatureView!
    @IBOutlet weak var DrawView2: AASignatureView!

    private var lineArray: [[CGPoint]] = [[CGPoint]]()

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
        let saveAction = UIAlertAction(title: "Save", style: UIAlertAction.Style.default, handler: { alert -> Void in
               let firstTextField = alertController.textFields![0] as UITextField
//               let secondTextField = alertController.textFields![1] as UITextField
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    //    forceLabel.adjustsFontSizeToFitWidth = true
        
//        let canvas = Canvas()
//           canvas.translatesAutoresizingMaskIntoConstraints = false
//           view.addSubview(canvas)
   
//        let context = UIGraphicsGetCurrentContext()
//            context!.setLineWidth(100)
//        context!.setStrokeColor(UIColor.black.cgColor)
//            context?.move(to: CGPoint(x: 500, y: 200))
//            context?.addLine(to: CGPoint(x: 500, y: 300))
//            context!.strokePath()

    
    }
    
    func draw(_ rect: CGRect) {
        // Drawing code
        let rectangle = CGRect(x: 0, y: 100, width: 320, height: 100)
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.0) //this is the transparent color
        context?.setStrokeColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.5)
        context?.fill(rectangle)
        context?.stroke(rectangle) //this will draw the border

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    override func touchesBegan(touches: Set, withEvent event: UIEvent) {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
           
           // 2
           guard let touch = touches.first else { return }
           let firstPoint = touch.location(in: DrawView1)

           // 3
           lineArray.append([CGPoint]())
           lineArray[lineArray.count - 1].append(firstPoint)
       }
    override func touchesMoved(_ touches: Set<UITouch>,
                               with event: UIEvent?) {
        if let touch = touches.first {
            if #available(iOS 9.0, *) {
                if traitCollection.forceTouchCapability == UIForceTouchCapability.available {
                    if touch.force >= touch.maximumPossibleForce {
                //        forceLabel.text = "385+ grams"
                    } else {
                        let force = touch.force/touch.maximumPossibleForce
                        let grams = force * 385
                        let roundGrams = Int(grams)
               //         forceLabel.text = "\(roundGrams) grams"
                        
//                        guard let touch = touches.first else { return }
//                        let currentPoint = touch.location(in: DrawView1)
//                             lineArray[lineArray.count - 1].append(currentPoint)
//                             setNeedsDisplay()
  
                        
//                        let context = UIGraphicsGetCurrentContext()
//                                context?.setLineWidth(2.0)
//                                context?.setStrokeColor(UIColor.green.cgColor)
//                                context?.move(to: CGPoint(x: 30, y: 30))
//                                context?.addLine(to: CGPoint(x: Double(xBall), y: Double(yBall)))
//                                context?.strokePath()
                        
                        
                        
                        var kk:CGRect = CGRect(x: 0, y: 0, width: 320, height: 480)
                        self.draw(kk)
                        
                        DrawView1.lineWidth = force * 50

                        if(roundGrams>120)
                        {
//                        DrawView1.str11 = "30"
//                            DrawView2.str11 = "30"

                        //    DrawView1.lineWidth = 3.0
                        }
                        if(roundGrams>220)
                        {
                            DrawView2.lineWidth = 14.0

                            //DrawView1.str11 = "70"
//                            DrawView2.str11 = "70"

                        }

                        print("\(roundGrams) grams")
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
//        forceLabel.text = "0 gram"

    }
    
//    override func draw(_ rect: CGRect) {
//        let path = UIBezierPath()
//        path.move(to: CGPoint(x: 30, y: 30))
//        path.addLine(to: CGPoint(x: xBall, y: yBall))
//
//        path.lineWidth = 2
//        UIColor.green.setStroke()
//
//        path.stroke()
//    }
}

//@IBDesignable
//class Canvas: UIView {
//    var xBall = ...
//    var yBall = ...
//
//    let shapeLayer: CAShapeLayer = {
//        let shapeLayer = CAShapeLayer()
//        shapeLayer.strokeColor = UIColor.green.cgColor
//        shapeLayer.fillColor = UIColor.clear.cgColor
//        shapeLayer.lineWidth = 2
//        return shapeLayer
//    }()
//
//    override init(frame: CGRect = .zero) {
//        super.init(frame: frame)
//        configure()
//    }
//
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//        configure()
//    }
//
//    func configure() {
//        layer.addSublayer(shapeLayer)
//
//        updatePath()
//    }
//
//    func updatePath() {
//        let path = UIBezierPath()
//        path.move(to: CGPoint(x: 30, y: 30))
//        path.addLine(to: CGPoint(x: xBall, y: yBall))
//        shapeLayer.path = path.cgPath
//    }
//}


class CustomView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func draw(_ rect: CGRect) {
        guard let ctx = UIGraphicsGetCurrentContext() else { return }

        ctx.setFillColor(red: 1, green: 1, blue: 1, alpha: 0)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 0.5)

        let rectangle = CGRect(x: 0, y: 100, width: 320, height: 100)
        ctx.fill(rectangle)
        ctx.stroke(rectangle)
    }

}
