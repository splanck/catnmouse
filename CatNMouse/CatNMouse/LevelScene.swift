import SpriteKit

class LevelScene: SKScene, SKPhysicsContactDelegate {
    
    var player: SKSpriteNode!
    var goal: SKSpriteNode! // The green square that triggers the level transition
    var obstacles: [SKSpriteNode] = []
    let playerSpeed: CGFloat = 200.0 // Speed of player movement
    var lastTouchLocation: CGPoint? // To track the destination for player movement
    var dt: TimeInterval = 0 // Time delta to calculate smooth movement
    var lastUpdateTime: TimeInterval = 0
    var gameManager: GameManager? // Reference to DungeonGame for level transitions
    
    // Define categories for collision detection
    let playerCategory: UInt32 = 0x1 << 0
    let obstacleCategory: UInt32 = 0x1 << 1
    let borderCategory: UInt32 = 0x1 << 2
    let goalCategory: UInt32 = 0x1 << 3 // New category for the green square

    override func didMove(to view: SKView) {
        // Set up a new, more visually appealing background color
        backgroundColor = .darkGray
        self.size = CGSize(width: 2000, height: 2000) // Large level size
        
        // Set up physics world
        physicsWorld.contactDelegate = self
        physicsWorld.gravity = .zero // No gravity for a top-down game
    }
    
    override func update(_ currentTime: TimeInterval) {
        
    }
    
    // SKPhysicsContactDelegate method to handle contact between the player and the goal
    func didBegin(_ contact: SKPhysicsContact) {
        let contactMask = contact.bodyA.categoryBitMask | contact.bodyB.categoryBitMask
        
        if contactMask == (playerCategory | goalCategory) {
            // The player has touched the goal, tell DungeonGame to move to the next level
            gameManager?.nextLevel()
        }
    }
}

