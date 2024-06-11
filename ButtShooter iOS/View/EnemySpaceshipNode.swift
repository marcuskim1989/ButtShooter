//
//  EnemySpaceshipNode.swift
//  ButtShooter iOS
//
//  Created by Marcus Kim on 6/10/24.
//

import Foundation
import SpriteKit

class EnemySpaceshipNode: SKSpriteNode {
    var behaviorPattern: BehaviorPattern

    init(behaviorPattern: BehaviorPattern) {
        self.behaviorPattern = behaviorPattern
        let texture = SKTexture(imageNamed: "enemySpaceship")
        super.init(texture: texture, color: .clear, size: texture.size())
        self.name = "enemySpaceship"
        self.physicsBody = SKPhysicsBody(texture: texture, size: texture.size())
        self.physicsBody?.isDynamic = true
        self.physicsBody?.categoryBitMask = enemySpaceshipCategory
        self.physicsBody?.contactTestBitMask = missileCategory | spaceshipCategory
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func applyBehavior() {
        // Apply the behavior pattern to the enemy spaceship
    }
}
