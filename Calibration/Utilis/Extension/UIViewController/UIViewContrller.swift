//
//  UIViewContrller.swift
//  Compass
//
//  Created by Talha on 07/10/2021.
//  Copyright © 2021 Mtech Soft. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController{
    func pushToVC(vc: UIViewController) {
        self.navigationController?.pushViewController(vc, animated: true)
    }
    }
// Search Bar Icon Color
//extension UIViewController{
//    /**** Custom Searchbar****/
//    func setUpSearchBar(searchBar: UISearchBar){
//        searchBar.setupSearchBarSearchIcon(color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
//        if let textField = searchBar.value(forKey: "searchField") as? UITextField {
//            textField.backgroundColor = UIColor(named: "NotificationCellBg")
//            textField.font = UIFont(name: "Montserrat-Regular", size: 13)
//            textField.textColor = UIColor(named: "BlackAndWhite")
//            let backgroundView = textField.subviews.first
//            if #available(iOS 11.0, *) {
//                backgroundView?.backgroundColor = UIColor(named: "NotificationCellBg")
//                backgroundView?.subviews.forEach({ $0.removeFromSuperview() })
//            }
//            backgroundView?.layer.cornerRadius = 8
//            backgroundView?.layer.masksToBounds = true
//        }
//    }

