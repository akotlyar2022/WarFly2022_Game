//
//  Enemy.swift
//  WarFly2022_Game
//
//  Created by macbook on 08.01.23.
//

import SpriteKit

class Enemy: SKSpriteNode {
    
    static var textureAtlas: SKTextureAtlas?
    
    init() {
        let texture = Enemy.textureAtlas?.textureNamed("airplane_4ver2_13")
        super.init(texture: texture, color: .clear, size: CGSize(width: 221, height: 204))
        self.xScale = 0.5
        self.yScale = -0.5
        self.zPosition = 20
        self.name = "sprite"
    }
    
    func flySpiral() {
        let screenSize = UIScreen.main.bounds
        let timeHorisontal: Double = 3
        let timeVertical: Double = 10
        let moveLeft = SKAction.moveTo(x: 50, duration: timeHorisontal)
        moveLeft.timingMode = .easeInEaseOut
        let moveRight = SKAction.moveTo(x: screenSize.width - 50, duration: timeHorisontal)
        moveRight.timingMode = .easeInEaseOut
        let asideMovementSequence = SKAction.sequence([moveLeft, moveRight])
        let foreverAssideMovement = SKAction.repeatForever(asideMovementSequence)
        
        let forwardMovement = SKAction.moveTo(y: -105, duration: timeVertical)
        let groupMovement = SKAction.group([foreverAssideMovement, forwardMovement])
        self.run(groupMovement)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
