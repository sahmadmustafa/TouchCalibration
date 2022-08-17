//
//  calibrationVC.swift
//  Calibration
//
//  Created by Apple on 4/18/22.
//

import Foundation

import UIKit
import Foundation

class calibrationVC: UIViewController {
    @IBOutlet weak var txtView: UITextView!

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated) // No need for semicolon
    
    //        super.viewDidLoad()
            
            let userDefaults = UserDefaults.standard

            // Read/Get Array of Strings
            var strings: [String] = userDefaults.object(forKey: "SnapShotNames") as? [String] ?? []
            var strings2: [String] = userDefaults.object(forKey: "SnapShotValues") as? [String] ?? []


            // Append String to Array of Strings
         //   strings.append("Four")
            
            
            for i in 0 ..< strings.count {
    //                   print("Services \(i + 1): \(Services[i])")
    //
    //                   let Service:NSDictionary = Services[i] as! NSDictionary
    //
    //                   AllServices =  (Service["category_name"] as! NSString) as String+AllServices
                txtView.text = txtView.text + "\n"

                txtView.text = txtView.text + strings[i] + " --- " + strings2[i]
           
                txtView.text = txtView.text + "\n"
                
            }
            
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userDefaults = UserDefaults.standard

        // Read/Get Array of Strings
        var strings: [String] = userDefaults.object(forKey: "SnapShotNames") as? [String] ?? []
        var strings2: [String] = userDefaults.object(forKey: "SnapShotValues") as? [String] ?? []

print(strings)
        print(strings2)

        // Append String to Array of Strings
        //strings.append("Four")
        
        
//        for i in 0 ..< strings.count {
////                   print("Services \(i + 1): \(Services[i])")
////
////                   let Service:NSDictionary = Services[i] as! NSDictionary
////
////                   AllServices =  (Service["category_name"] as! NSString) as String+AllServices
//
//            txtView.text = strings[i] + " --- " + strings2[i]
//
//            txtView.text = txtView.text + "\n"
//
//        }
        
    }
}
