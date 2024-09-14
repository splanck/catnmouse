//
//  MenuScene.swift
//  dungeon
//
//  Created by Stephen Planck on 9/5/24.
//

import SpriteKit

class MenuScene: SKScene {
    
    override func didMove(to view: SKView) {
        // Set up the background
        backgroundColor = .black
        
        // Create and add the start game button
        let startButton = createButton(withText: "Start Game", position: CGPoint(x: size.width / 2, y: size.height / 2 + 50))
        startButton.name = "startGameButton"
        addChild(startButton)
        
        // Create and add the about button
        let aboutButton = createButton(withText: "About", position: CGPoint(x: size.width / 2, y: size.height / 2 - 50))
        aboutButton.name = "aboutGameButton"
        addChild(aboutButton)
    }
    
    // Helper function to create a button
    func createButton(withText text: String, position: CGPoint) -> SKLabelNode {
        let button = SKLabelNode(fontNamed: "Chalkduster")
        button.text = text
        button.fontSize = 40
        button.fontColor = .white
        button.position = position
        return button
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        let touchedNode = atPoint(location)
        
        if touchedNode.name == "startGameButton" {
            let dungeonGameScene = GameManager(size: size)
            dungeonGameScene.scaleMode = scaleMode
            let transition = SKTransition.fade(withDuration: 1.0)
            view?.presentScene(dungeonGameScene, transition: transition)
        } else if touchedNode.name == "aboutGameButton" {
            let aboutGameScene = aboutGame(size: size)
            aboutGameScene.scaleMode = scaleMode
            let transition = SKTransition.fade(withDuration: 1.0)
            view?.presentScene(aboutGameScene, transition: transition)
        }
    }
}
