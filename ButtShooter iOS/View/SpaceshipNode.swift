//
//  SpaceshipNode.swift
//  ButtShooter iOS
//
//  Created by Marcus Kim on 6/10/24.
//

import Foundation
import SpriteKit

class SpaceshipNode: SKSpriteNode {
    init() {
        let texture = SKTexture(imageNamed: "spaceship")
        super.init(texture: texture, color: .clear, size: texture.size())
        self.name = "spaceship"
        self.physicsBody = SKPhysicsBody(texture: texture, size: texture.size())
        self.physicsBody?.isDynamic = true
        self.physicsBody?.categoryBitMask = spaceshipCategory
        self.physicsBody?.contactTestBitMask = asteroidCategory | enemySpaceshipCategory | extraLifeCategory
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func applyThrust() {
        // Apply thrust logic
    }
}
