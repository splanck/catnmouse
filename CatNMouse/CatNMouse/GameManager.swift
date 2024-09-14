import SpriteKit

class GameManager: SKScene {
    
    override func didMove(to view: SKView) {
        startNewGame()
    }
    
    // Method to start a new game
    func startNewGame() {
        // Initialize the game state variables
        GameState.shared.lives = 3
        GameState.shared.armor = 0
        GameState.shared.currentLevel = 1
        
        // Load the first level
        loadLevelScene()
    }
    
    // Method to load the level scene
    func loadLevelScene() {
        let levelScene = LevelScene(size: size)
        levelScene.scaleMode = scaleMode
        levelScene.gameManager = self // Pass reference of DungeonGame to LevelScene
        let transition = SKTransition.fade(withDuration: 1.0)
        view?.presentScene(levelScene, transition: transition)
    }
    
    // Method to load the next level
    func nextLevel() {
        // Increase the level number in GameState
        GameState.shared.currentLevel += 1
        
        // Load the next level
        loadLevelScene()
    }
}
