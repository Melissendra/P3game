//
//  Characters.swift
//  Project3
//
//  Created by Gaelle Lefeuvre on 01/03/2018.
//  Copyright © 2018 Gaelle Lefeuvre. All rights reserved.
//

import Foundation

// Creation class characters for specificities
class Character {
    let type: String
    var life: Int
    var weapon: Weapon
    let name: String
    
// properties' initialization
    init(name: String, type: String, life: Int, weapon: Weapon) {
        self.name = name
        self.type = type
        self.life = life
        self.weapon = weapon
    }
    
// Method
    func description() {
        print("")
        print(type + "- \(life) pv" + " - Weapon: \(self.weapon.type)" + " - Damage: \(self.weapon.damage)" + " - HealingStrength: \(self.weapon.healingStrength)")
    }
    
}
