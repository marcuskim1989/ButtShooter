//
//  GameData.swift
//  ButtShooter iOS
//
//  Created by Marcus Kim on 6/9/24.
//

import Foundation
import SpriteKit

class GameData {
    var score: Int = 0
    var lives: Int = 3
    var isGameOver: Bool = false

    func increaseScore(by points: Int) {
        score += points
    }

    func decreaseLives() {
        lives -= 1
        if lives <= 0 {
            isGameOver = true
        }
    }

    func reset() {
        score = 0
        lives = 3
        isGameOver = false
    }
}
