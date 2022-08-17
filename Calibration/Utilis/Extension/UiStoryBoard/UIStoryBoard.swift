//
//  UIStoryBoard.swift
//  SlideMail
//
//  Created by Adnan Bhatti on 10/03/2021.
//

import Foundation
import UIKit
// MARK: StoryBoard
extension UIStoryboard {
    
    class func controller<T: UIViewController>() -> T {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: T.className) as! T
    }
}
// MARK: NSObject
extension NSObject {
    class var className: String {
        return String(describing: self.self)
    }
}
