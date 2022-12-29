//
//  GameScene.swift
//  WarFly2022_Game
//
//  Created by macbook on 29.12.22.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        
        let screenCenterPoint = CGPoint(x: self.size.width / 2, y: self.size.height / 2)
        let background = Background.populateBackground(at: screenCenterPoint)
        background.size = self.size
        self.addChild(background)
        
        let screen = UIScreen.main.bounds
        for _ in 1...5 {
            let x: CGFloat = CGFloat(GKRandomSource.sharedRandom().nextInt(upperBound: Int(screen.size.width)))
            let y: CGFloat = CGFloat(GKRandomSource.sharedRandom().nextInt(upperBound: Int(screen.size.height)))
            
            let island = Island.populateIsland(at: CGPoint(x: x, y: y))
            self.addChild(island)
        }
    }
}
