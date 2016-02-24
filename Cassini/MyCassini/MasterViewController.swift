//
//  ViewController.swift
//  MyCassini
//
//  Created by 何鑫 on 16/2/16.
//  Copyright © 2016年 HX.Inc. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let ivc = segue.destinationViewController as? ImageViewController {
            if let identifier = segue.identifier {
                switch identifier {
                case "ShowImage1":
                    ivc.imageURL = ImageURL.image1
                case "ShowImage2":
                    ivc.imageURL = ImageURL.image3
                default: break
                }
            }
        }
    }

}

