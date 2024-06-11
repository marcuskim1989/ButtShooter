//
//  HUDNode.swift
//  ButtShooter iOS
//
//  Created by Marcus Kim on 6/10/24.
//

import Foundation
import SpriteKit

class HUDNode: SKNode {
    private let scoreLabel = SKLabelNode(text: "Score: 0")
    private let livesLabel = SKLabelNode(text: "Lives: 3")

    override init() {
        super.init()
        setupHUD()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupHUD() {
        scoreLabel.fontSize = 20
        scoreLabel.fontColor = .white
        scoreLabel.position = CGPoint(x: 50, y: UIScreen.main.bounds.height - 50)
        addChild(scoreLabel)

        livesLabel.fontSize = 20
        livesLabel.fontColor = .white
        livesLabel.position = CGPoint(x: UIScreen.main.bounds.width - 50, y: UIScreen.main.bounds.height - 50)
        addChild(livesLabel)
    }

    func updateScore(_ score: Int) {
        scoreLabel.text = "Score: \(score)"
    }

    func updateLives(_ lives: Int) {
        livesLabel.text = "Lives: \(lives)"
    }
}
