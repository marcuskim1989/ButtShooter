
import SpriteKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    private let gameData = GameData()
    private var spaceship: SpaceshipNode!
    private var asteroids: [AsteroidNode] = []
    private var enemySpaceships: [EnemySpaceshipNode] = []
    private var hud: HUDNode!

    override func didMove(to view: SKView) {
        physicsWorld.contactDelegate = self

        spaceship = SpaceshipNode()
        spaceship.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(spaceship)

        hud = HUDNode()
        addChild(hud)

        spawnAsteroids()
        spawnEnemySpaceships()
        spawnExtraLives()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            handleTouch(at: location)
        }
    }

    override func update(_ currentTime: TimeInterval) {
        super.update(currentTime)
        // Game loop logic
        checkGameOver()
    }

    private func handleTouch(at location: CGPoint) {
        // Example interaction
        spaceship.applyThrust()
    }

    func didBegin(_ contact: SKPhysicsContact) {
        // Handle collisions
        if let missile = contact.bodyA.node as? MissileNode,
           let asteroid = contact.bodyB.node as? AsteroidNode {
            handleCollision(missile: missile, asteroid: asteroid)
        } else if let spaceship = contact.bodyA.node as? SpaceshipNode,
                  let extraLife = contact.bodyB.node as? ExtraLifeNode {
            handleExtraLifePickup(extraLife: extraLife)
        }
    }

    private func handleCollision(missile: MissileNode, asteroid: AsteroidNode) {
        missile.removeFromParent()
        asteroid.removeFromParent()

        splitAsteroid(asteroid: asteroid)
        gameData.increaseScore(by: 100)
        hud.updateScore(gameData.score)
    }

    private func handleExtraLifePickup(extraLife: ExtraLifeNode) {
        extraLife.removeFromParent()
        gameData.gainLife()
        hud.updateLives(gameData.lives)
    }

    private func splitAsteroid(asteroid: AsteroidNode) {
        let smallerAsteroid1 = AsteroidNode(size: asteroid.size.width / 2)
        let smallerAsteroid2 = AsteroidNode(size: asteroid.size.width / 2)
        
        smallerAsteroid1.position = CGPoint(x: asteroid.position.x + 20, y: asteroid.position.y + 20)
        smallerAsteroid2.position = CGPoint(x: asteroid.position.x - 20, y: asteroid.position.y - 20)
        
        addChild(smallerAsteroid1)
        addChild(smallerAsteroid2)
        
        asteroids.append(smallerAsteroid1)
        asteroids.append(smallerAsteroid2)
    }

    private func spawnAsteroids() {
        for _ in 0..<5 {
            let asteroid = AsteroidNode(size: 3)
            asteroid.position = CGPoint(x: CGFloat.random(in: 0...size.width), y: CGFloat.random(in: 0...size.height))
            addChild(asteroid)
            asteroids.append(asteroid)
        }
    }

    private func spawnEnemySpaceships() {
        for _ in 0..<3 {
            let enemySpaceship = EnemySpaceshipNode(behaviorPattern: .patrol)
            enemySpaceship.position = CGPoint(x: CGFloat.random(in: 0...size.width), y: CGFloat.random(in: 0...size.height))
            addChild(enemySpaceship)
            enemySpaceships.append(enemySpaceship)
        }
    }

    private func spawnExtraLives() {
        let extraLife = ExtraLifeNode()
        extraLife.position = CGPoint(x: CGFloat.random(in: 0...size.width), y: CGFloat.random(in: 0...size.height))
        addChild(extraLife)
    }

    private func checkGameOver() {
        if gameData.isGameOver {
            // Handle game over logic
        }
    }
}
