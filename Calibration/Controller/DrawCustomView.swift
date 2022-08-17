//
//  DrawCustomView.swift
//  Calibration
//
//  Created by sid on 4/15/22.
//

import Foundation
import UIKit

class DrawView: UIView {

    var str11:String = ""

    // 1
    private var lineArray: [[CGPoint]] = [[CGPoint]]()

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // 2
        guard let touch = touches.first else { return }
        let firstPoint = touch.location(in: self)

        // 3
        lineArray.append([CGPoint]())
        lineArray[lineArray.count - 1].append(firstPoint)
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // 4
        guard let touch = touches.first else { return }
        let currentPoint = touch.location(in: self)
        lineArray[lineArray.count - 1].append(currentPoint)
        setNeedsDisplay()
    }

}
