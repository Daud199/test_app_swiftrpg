//
//  PlayerCharacter.swift
//  TestApp
//
//  Created by labadmin on 08/01/23.
//

import Foundation

class PlayerCharacter {
    
    enum characterArchetype {
        case warrior, mage, thief, custom
    }
    var health : Int
    var intellect : Int
    var strength : Int
    var dexterity : Int
    var equipment : [String?]
    var classArchetype : characterArchetype
    
    init(health: Int, intellect: Int, strength: Int, dexterity: Int, equipment: [String?], classArchetype : characterArchetype) {
        self.health = health
        self.intellect = intellect
        self.strength = strength
        self.dexterity = dexterity
        self.equipment = equipment
        self.classArchetype = classArchetype
    }
    
    func getPlayerHealth() -> String {
        return String(self.health)
    }
}
