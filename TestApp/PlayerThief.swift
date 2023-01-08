//
//  PlayerThief.swift
//  TestApp
//
//  Created by labadmin on 08/01/23.
//

import Foundation

class PlayerThief : PlayerCharacter {
    init() {
        super.init(health: 150, intellect: 5, strength: 3, dexterity: 7, equipment: ["Pugnale", "Corda", "Grimaldelli"], classArchetype: PlayerCharacter.characterArchetype.thief)
    }
}
