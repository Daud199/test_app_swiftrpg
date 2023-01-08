//
//  PlayerWarrior.swift
//  TestApp
//
//  Created by labadmin on 08/01/23.
//

import Foundation

class PlayerWarrior : PlayerCharacter {
    init() {
        super.init(health: 200, intellect: 3, strength: 7, dexterity: 4, equipment: ["Ascia pesante", "Armatura"], classArchetype: PlayerCharacter.characterArchetype.warrior)
    }
}
