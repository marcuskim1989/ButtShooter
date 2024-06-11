//
//  SpaceshipData.swift
//  ButtShooter iOS
//
//  Created by Marcus Kim on 6/9/24.
//

import Foundation
import SpriteKit

class SpaceshipData {
    var position: CGPoint
    var velocity: CGVector
    var rotation: CGFloat

    init(position: CGPoint, velocity: CGVector, rotation: CGFloat) {
        self.position = position
        self.velocity = velocity
        self.rotation = rotation
    }
}
