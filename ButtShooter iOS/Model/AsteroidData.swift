//
//  AsteroidData.swift
//  ButtShooter iOS
//
//  Created by Marcus Kim on 6/9/24.
//

import Foundation
import SpriteKit

class AsteroidData {
    var size: Int
    var velocity: CGVector

    init(size: Int, velocity: CGVector) {
        self.size = size
        self.velocity = velocity
    }
}
