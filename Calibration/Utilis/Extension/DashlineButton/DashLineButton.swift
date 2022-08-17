//
//  DashLineButton.swift
//  Crypto Wallet
//
//  Created by Saqib Talha on 28/06/2021.
//  Copyright © 2021 Mtech Soft. All rights reserved.
//

import UIKit

class DashLineView: UIView {

    
    
    
    private let borderLayer = CAShapeLayer()

       override func awakeFromNib() {

           super.awakeFromNib()

           borderLayer.strokeColor = #colorLiteral(red: 0.7176470588, green: 0.168627451, blue: 0.7098039216, alpha: 1)
           borderLayer.lineDashPattern = [5,5]
           borderLayer.backgroundColor = UIColor.clear.cgColor
           borderLayer.fillColor = UIColor.clear.cgColor

           layer.addSublayer(borderLayer)
       }

       override func draw(_ rect: CGRect) {

           borderLayer.path = UIBezierPath(roundedRect: rect, cornerRadius: 10).cgPath
       }
    
    

}
