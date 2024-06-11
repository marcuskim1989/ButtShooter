//
//  MissileData.swift
//  ButtShooter iOS
//
//  Created by Marcus Kim on 6/9/24.
//

import Foundation
import SpriteKit

class MissileData {
    var position: CGPoint
    var velocity: CGVector

    init(position: CGPoint, velocity: CGVector) {
        self.position = position
        self.velocity = velocity
    }
}
