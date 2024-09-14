import SpriteKit

class aboutGame: SKScene {
    
    override func didMove(to view: SKView) {
        // Set the background color
        backgroundColor = .black
        
        // Create and add the label for the About section
        let aboutLabel = SKLabelNode(fontNamed: "Chalkduster")
        aboutLabel.text = "About This Game"
        aboutLabel.fontSize = 40
        aboutLabel.fontColor = .white
        aboutLabel.position = CGPoint(x: size.width / 2, y: size.height / 2 + 50)
        addChild(aboutLabel)
        
        // Additional description text
        let descriptionLabel = SKLabelNode(fontNamed: "Chalkduster")
        descriptionLabel.text = "This is a simple SpriteKit game!"
        descriptionLabel.fontSize = 20
        descriptionLabel.fontColor = .white
        descriptionLabel.position = CGPoint(x: size.width / 2, y: size.height / 2 - 20)
        addChild(descriptionLabel)
        
        // Create and add the back button
        let backButton = SKLabelNode(fontNamed: "Chalkduster")
        backButton.text = "Back"
        backButton.fontSize = 30
        backButton.fontColor = .white
        backButton.position = CGPoint(x: size.width / 2, y: size.height / 2 - 100)
        backButton.name = "backButton"
        addChild(backButton)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        let touchedNode = atPoint(location)
        
        if touchedNode.name == "backButton" {
            let mainMenuScene = MenuScene(size: size)
            mainMenuScene.scaleMode = scaleMode
            let transition = SKTransition.fade(withDuration: 1.0)
            view?.presentScene(mainMenuScene, transition: transition)
        }
    }
}
