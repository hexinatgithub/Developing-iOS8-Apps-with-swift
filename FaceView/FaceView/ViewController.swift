//
//  ViewController.swift
//  FaceView
//
//  Created by 何鑫 on 16/2/13.
//  Copyright © 2016年 HX.Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, FaceViewDataSource {

	var happiness = 10 {	//0 very sad, 100 ecstatic
		didSet {
			happiness = min(max(happiness, 0), 100)
			updateUI()
		}
	}

    private func updateUI() {
    	faceView.setNeedsDisplay()
    }

    @IBOutlet weak var faceView: FaceView! {
        didSet {
        	faceView.dataSource = self
        	let pinch = UIPinchGestureRecognizer(target: faceView, action: "scale:")
            faceView.addGestureRecognizer(pinch)
        }
    }
    
    private struct Constant {
        static let HappinessGestureScale: CGFloat = 3
    }
    
    @IBAction func pan(sender: UIPanGestureRecognizer) {
        switch sender.state {
        case .Changed: fallthrough
        case .Ended:
            let translation = sender.translationInView(faceView)
            let happinessChange = -Int(translation.y / Constant.HappinessGestureScale)
            if happinessChange != 0 {
                happiness += happinessChange
                sender.setTranslation(CGPointZero, inView: faceView)
            }
        default: break
        }
    }
    
    
    func smilinessForFaceView(sender: FaceView) -> Double? {
    	return Double(happiness - 50) / 100
    }



}

