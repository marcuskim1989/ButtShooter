//
//  EnemySpaceshipData.swift
//  ButtShooter iOS
//
//  Created by Marcus Kim on 6/10/24.
//

import Foundation
import SpriteKit

class EnemySpaceshipData {
    var health: Int
    var position: CGPoint
    var velocity: CGVector
    var behaviorPattern: BehaviorPattern

    init(health: Int, position: CGPoint, velocity: CGVector, behaviorPattern: BehaviorPattern) {
        self.health = health
        self.position = position
        self.velocity = velocity
        self.behaviorPattern = behaviorPattern
    }
}

enum BehaviorPattern {
    case patrol
    case chase
    case evade
}
