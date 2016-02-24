 //
//  BouncerBehavior.swift
//  Bouncer
//
//  Created by 何鑫 on 16/2/23.
//  Copyright © 2016年 HX.Inc. All rights reserved.
//

import UIKit

class BouncerBehavior: UIDynamicBehavior {
    lazy var collider: UICollisionBehavior = {
        let lazzilyCreatedCollision = UICollisionBehavior()
        lazzilyCreatedCollision.translatesReferenceBoundsIntoBoundary = true
        return lazzilyCreatedCollision
    }()
    
    let gravity = UIGravityBehavior()
    
    lazy var blockBehavior: UIDynamicItemBehavior = {
        let lazzilyCreatedBlockBehavior = UIDynamicItemBehavior()
        lazzilyCreatedBlockBehavior.allowsRotation = false
        lazzilyCreatedBlockBehavior.elasticity = 0
        lazzilyCreatedBlockBehavior.friction = 0
        lazzilyCreatedBlockBehavior.resistance = 0
        return lazzilyCreatedBlockBehavior
    }()
    
    override init() {
        super.init()
        addChildBehavior(gravity)
        addChildBehavior(collider)
        addChildBehavior(blockBehavior)
    }
    
    func addBarrier(path: UIBezierPath, name: String) {
        collider.removeBoundaryWithIdentifier(name)
        collider.addBoundaryWithIdentifier(name, forPath: path)
    }
    
    func addBlock(block: UIView) {
        dynamicAnimator?.referenceView?.addSubview(block)
        gravity.addItem(block)
        collider.addItem(block)
        blockBehavior.addItem(block)
    }
    
    func removeBlock(block: UIView) {
        gravity.removeItem(block)
        collider.removeItem(block)
        blockBehavior.removeItem(block)
        block.removeFromSuperview()
    }
 }
