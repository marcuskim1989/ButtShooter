//
//  ExtraLifeData.swift
//  ButtShooter iOS
//
//  Created by Marcus Kim on 6/10/24.
//

import Foundation
import SpriteKit

class ExtraLifeData {
    var position: CGPoint
    var duration: TimeInterval

    init(position: CGPoint, duration: TimeInterval) {
        self.position = position
        self.duration = duration
    }
}

