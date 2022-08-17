 import Foundation
 import UIKit
 extension UIView{
     
     func roundRadiusCorner(cornerRadius: CGFloat){
 //        self.clipsToBounds = true
         self.layer.cornerRadius = cornerRadius
         self.layer.maskedCorners = [.layerMaxXMaxYCorner]
     }
  
 }
 // Helper
 //.layerMinXMinYCorner = Top left corner
 //.layerMaxXMinYCorner = Top right corner
 //.layerMinXMaxYCorner = Bottom left corner
 //.layerMaxXMaxYCorder = Bottom right corner
