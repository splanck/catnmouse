//
//  GameViewController.swift
//  dungeon
//
//  Created by Stephen Planck on 9/5/24.
//
import UIKit
import SpriteKit

class GameViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()

        let skView = SKView(frame: self.view.bounds)
        self.view = skView
        
        let scene = MenuScene(size: self.view.bounds.size)
        scene.scaleMode = .aspectFill
        
        skView.presentScene(scene)
    }

    override var prefersStatusBarHidden: Bool
    {
        return true
    }
}
        
