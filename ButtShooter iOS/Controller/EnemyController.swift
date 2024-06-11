//
//  EnemyController.swift
//  ButtShooter iOS
//
//  Created by Marcus Kim on 6/10/24.
//

import Foundation
import SpriteKit

class EnemyController {
    private var enemySpaceships: [EnemySpaceshipNode] = []

    func addEnemy(_ enemy: EnemySpaceshipNode) {
        enemySpaceships.append(enemy)
    }

    func updateEnemies() {
        for enemy in enemySpaceships {
            // Update each enemy's behavior
            enemy.applyBehavior()
        }
    }
}
