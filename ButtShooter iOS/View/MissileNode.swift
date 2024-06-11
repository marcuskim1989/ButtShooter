//
//  MissileNode.swift
//  ButtShooter iOS
//
//  Created by Marcus Kim on 6/10/24.
//

import Foundation
import SpriteKit

class MissileNode: SKSpriteNode {
    init() {
        let texture = SKTexture(imageNamed: "missile")
        super.init(texture: texture, color: .clear, size: texture.size())
        self.name = "missile"
        self.physicsBody = SKPhysicsBody(texture: texture, size: texture.size())
        self.physicsBody?.isDynamic = true
        self.physicsBody?.categoryBitMask = missileCategory
        self.physicsBody?.contactTestBitMask = asteroidCategory | enemySpaceshipCategory
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
