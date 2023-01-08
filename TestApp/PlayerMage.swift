//
//  PlayerMage.swift
//  TestApp
//
//  Created by labadmin on 08/01/23.
//

import Foundation

class PlayerMage : PlayerCharacter {
    init() {
        super.init(health: 120, intellect: 8, strength: 2, dexterity: 5, equipment: ["Bastone magico", "Sfera di cristallo", "Pergamene magiche"], classArchetype: PlayerCharacter.characterArchetype.mage)
    }
}
