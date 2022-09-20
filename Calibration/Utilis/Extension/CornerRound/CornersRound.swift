//
//  RoundCorners.swift
//  Brushed
//
//  Created by Ahmed on 13/11/2020.
//  Copyright © 2020 MtechSoft. All rights reserved.
//
import Foundation
import UIKit
extension UIView{
//fg
    func fourCornor(){
        self.clipsToBounds = true
        self.layer.cornerRadius = 5
        self.layer.maskedCorners = [.layerMinXMinYCorner,.layerMinXMaxYCorner, .layerMaxXMinYCorner,.layerMaxXMaxYCorner]
    }
    
    
    func topTwoCornor(){
        self.clipsToBounds = true
        self.layer.cornerRadius = 25
        self.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    }
    func TopTwoCornor(){
        self.clipsToBounds = true
        self.layer.cornerRadius = 45
        self.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    }
    func ExceptBottomLeft(){
        self.clipsToBounds = true
        self.layer.cornerRadius = 20
        self.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner,.layerMaxXMaxYCorner]
    }
    func ExceptBottomRight(){
        self.clipsToBounds = true
        self.layer.cornerRadius = 20
        self.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner,.layerMinXMaxYCorner]
    }
}



// MARK: CORNERS
//layerMaxXMaxYCorner - bottom right corner
//layerMaxXMinYCorner - top right corner
//layerMinXMaxYCorner - bottom left corner
//layerMinXMinYCorner - top left corner
