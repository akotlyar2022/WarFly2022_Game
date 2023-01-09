//
//  Assets.swift
//  WarFly2022_Game
//
//  Created by macbook on 09.01.23.
//

import SpriteKit

class Assets {
    static let shared = Assets()
    let yellowAmmoAtlas = SKTextureAtlas(named: "YellowAmmo")
    let enemy_1Atlas = SKTextureAtlas(named: "Enemy_1")
    let enemy_2Atlas = SKTextureAtlas(named: "Enemy_2")
    let playerPlaneAtlas = SKTextureAtlas(named: "PlayerPlane")
    let greenPowerUpAtlas = SKTextureAtlas(named: "GreenPowerUp")
    let bluePowerUpAtlas = SKTextureAtlas(named: "BluePowerUp")
    
    func preloadAssets() {
        yellowAmmoAtlas.preload { print("yellowAmmoAtlas preloaded") }
        enemy_1Atlas.preload { print("enemy_1Atlas preloaded") }
        enemy_2Atlas.preload { print("enemy_2Atlas preloaded") }
        playerPlaneAtlas.preload { print("playerPlaneAtlas preloaded") }
        greenPowerUpAtlas.preload { print("greenPowerUpAtlas preloaded") }
        bluePowerUpAtlas.preload { print("bluePowerUpAtlas preloaded") }

    }
}
