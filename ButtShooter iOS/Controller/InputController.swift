//
//  InputController.swift
//  ButtShooter iOS
//
//  Created by Marcus Kim on 6/10/24.
//

import Foundation
import SpriteKit

class InputController {
    private let spaceship: SpaceshipNode

    init(spaceship: SpaceshipNode) {
        self.spaceship = spaceship
    }

    func handleTouch(at location: CGPoint) {
        // Example interaction
        spaceship.applyThrust()
    }
}
