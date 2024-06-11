//
//  ExtraLifeNode.swift
//  ButtShooter iOS
//
//  Created by Marcus Kim on 6/10/24.
//

import Foundation
import SpriteKit

class ExtraLifeNode: SKSpriteNode {
    init() {
        let texture = SKTexture(imageNamed: "extraLife")
        super.init(texture: texture, color: .clear, size: texture.size())
        self.name = "extraLife"
        self.physicsBody = SKPhysicsBody(texture: texture, size: texture.size())
        self.physicsBody?.isDynamic = true
        self.physicsBody?.categoryBitMask = extraLifeCategory
        self.physicsBody?.contactTestBitMask = spaceshipCategory
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
