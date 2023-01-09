//
//  YellowShot.swift
//  WarFly2022_Game
//
//  Created by macbook on 09.01.23.
//

import SpriteKit

class YellowShot: Shot {
    init() {
        let textureAtlas = SKTextureAtlas(named: "YellowShot")
        super.init(textureAtlas: textureAtlas)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
