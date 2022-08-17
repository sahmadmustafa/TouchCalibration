////
////
////
////  Created by Saqib Talha on 13/08/2021.
////  Copyright  Hafiz All right Reserved.
////
//
import Foundation
import UIKit

extension UIViewController{
    
func showPopupViewController(onViewController: UIViewController, popupVC: UIViewController){
    onViewController.addChild(popupVC)
    popupVC.view.bounds = CGRect(x: 0.0, y: 0.0, width: onViewController.view.frame.width, height: onViewController.view.frame.height)
    onViewController.view.addSubview(popupVC.view)
    popupVC.didMove(toParent: onViewController)
}
    
    func fadeIn(duration: TimeInterval = 0.3, delay: TimeInterval = 0.0, completion: @escaping ((Bool) -> Void) = {(finished: Bool) -> Void in }) {
        self.view.alpha = 0.0
        
        UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.view.isHidden = false
            self.view.alpha = 1.0
        }, completion: completion)
    }
    
    func fadeOut(duration: TimeInterval = 0.9, delay: TimeInterval = 0.0, completion: @escaping (Bool) -> Void = {(finished: Bool) -> Void in }) {
        self.view.alpha = 1.0
        
        UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
            //            UIImageView.AnimationOptions.transitionCurlUp
            self.view.isHidden = true
            self.view.alpha = 0.0
        }, completion: completion)
    }
    
    func showHelpCenterViewController(onViewController: UIViewController, popupVC: UIViewController){
        onViewController.addChild(popupVC)
        popupVC.view.bounds = onViewController.view.bounds
        onViewController.view.addSubview(popupVC.view)
        popupVC.didMove(toParent: onViewController)
    }
    
    func removePopup()
     {
         UIView.animate(withDuration: 0.15, animations: {
             self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
             self.view.alpha = 0.0;
         }, completion:{(finished : Bool)  in
             if (finished)
             {
                 self.view.removeFromSuperview()
             }
         });
     }
    
}
