//
//  DropitBehavior.swift
//  Dropit
//
//  Created by 何鑫 on 16/2/20.
//  Copyright © 2016年 HX.Inc. All rights reserved.
//

import UIKit

class DropitBehavior: UIDynamicBehavior {
    lazy var collider: UICollisionBehavior = {
        let lazzilyCreatedCollision = UICollisionBehavior()
        lazzilyCreatedCollision.translatesReferenceBoundsIntoBoundary = true
        return lazzilyCreatedCollision
    }()
    
    let gravity = UIGravityBehavior()
    
    lazy var dropBehavior: UIDynamicItemBehavior = {
        let lazzilyCreatedDropBehavior = UIDynamicItemBehavior()
        lazzilyCreatedDropBehavior.allowsRotation = false
        lazzilyCreatedDropBehavior.elasticity = 0.75
        return lazzilyCreatedDropBehavior
    }()
    
    override init() {
        super.init()
        addChildBehavior(gravity)
        addChildBehavior(collider)
        addChildBehavior(dropBehavior)
    }
    
    func addBarrier(path: UIBezierPath, name: String) {
        collider.removeBoundaryWithIdentifier(name)
        collider.addBoundaryWithIdentifier(name, forPath: path)
    }
    
    func addDrop(drop: UIView) {
        dynamicAnimator?.referenceView?.addSubview(drop)
        gravity.addItem(drop)
        collider.addItem(drop)
        dropBehavior.addItem(drop)
    }
    
    func removeDrop(drop: UIView) {
        gravity.removeItem(drop)
        collider.removeItem(drop)
        dropBehavior.removeItem(drop)
        drop.removeFromSuperview()
    }
}
