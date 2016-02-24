//
//  TextViewController.swift
//  Psychoiogist
//
//  Created by 何鑫 on 16/2/13.
//  Copyright © 2016年 HX.Inc. All rights reserved.
//

import UIKit

class TextViewController: UIViewController {

    @IBOutlet weak var textView: UITextView! {
        didSet {
            textView.text = text
        }
    }

    var text = "" {
        didSet {
            textView?.text = text
        }
    }
    
    override var preferredContentSize: CGSize {
        get {
            if textView != nil && presentingViewController != nil {
                print("\(presentingViewController!.view.bounds.size)")
                let a = textView.sizeThatFits(presentingViewController!.view.bounds.size)
                print("\(a)")
                return a
            }else {
                return super.preferredContentSize
            }
        }
        set {
            super.preferredContentSize = newValue
        }
    }
}
