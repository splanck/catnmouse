class GameState
{
    static let shared = GameState() // Singleton instance
    
    // Game properties
    var lives: Int = 3
    var armor: Int = 0
    var currentLevel: Int = 1
    var score: Int = 0
    
    private init()
    {
        // Private init to prevent external instances
    }
    
    // Reset the game state if needed
    func reset()
    {
        lives = 3
        armor = 0
        currentLevel = 1
    }
}
