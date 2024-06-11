//
//  AsteroidNode.swift
//  ButtShooter iOS
//
//  Created by Marcus Kim on 6/10/24.
//

import Foundation
import SpriteKit

class AsteroidNode: SKSpriteNode {
    init(size: CGFloat) {
        let texture = SKTexture(imageNamed: "asteroid")
        super.init(texture: texture, color: .clear, size: CGSize(width: size, height: size))
        self.name = "asteroid"
        self.physicsBody = SKPhysicsBody(texture: texture, size: CGSize(width: size, height: size))
        self.physicsBody?.isDynamic = true
        self.physicsBody?.categoryBitMask = asteroidCategory
        self.physicsBody?.contactTestBitMask = spaceshipCategory | missileCategory
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
