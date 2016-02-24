//
//  ViewController.swift
//  Psychoiogist
//
//  Created by 何鑫 on 16/2/13.
//  Copyright © 2016年 HX.Inc. All rights reserved.
//

import UIKit

class PsychoiogistViewController: UIViewController {
    @IBAction func nothing(sender: UIButton) {
        performSegueWithIdentifier("nothing", sender: sender)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var destination = segue.destinationViewController
        if let nvcCon = destination as? UINavigationController {

            destination = nvcCon.visibleViewController!
        }
        if let hvc = destination as? HappinessViewController {
            if let identifier = segue.identifier {
                switch identifier{
                    case "sad":     hvc.happiness = 0
                    case "happy":   hvc.happiness = 100
                    case "nothing": hvc.happiness = 25
                    default:        hvc.happiness = 50
                }
            }
        }
    }

}

