//
//  BezierPathView.swift
//  Dropit
//
//  Created by 何鑫 on 16/2/20.
//  Copyright © 2016年 HX.Inc. All rights reserved.
//

import UIKit

class BezierPathView: UIView {

    private var bezierPaths = [String: UIBezierPath]()
    
    func setPath(path: UIBezierPath?, named name: String) {
        bezierPaths[name] = path
        setNeedsDisplay()
    }
    
    override func drawRect(rect: CGRect) {
        for (_, path) in bezierPaths {
            path.stroke()
        }
    }

}
