//
//  AppDelegate.swift
//  Bouncer
//
//  Created by 何鑫 on 16/2/23.
//  Copyright © 2016年 HX.Inc. All rights reserved.
//

import UIKit
import CoreMotion

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    struct Motion {
        static let Manager = CMMotionManager()
    }

}

