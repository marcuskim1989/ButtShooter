//
//  HUDController.swift
//  ButtShooter iOS
//
//  Created by Marcus Kim on 6/10/24.
//

import Foundation
import SpriteKit

class HUDController {
    private let hud: HUDNode

    init(hud: HUDNode) {
        self.hud = hud
    }

    func updateScore(_ score: Int) {
        hud.updateScore(score)
    }

    func updateLives(_ lives: Int) {
        hud.updateLives(lives)
    }
}
