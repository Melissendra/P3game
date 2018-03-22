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
    var lifeMax: Int
    var weapon: Weapon
    let name: String
    
// properties' initialization
    init(name: String, type: String, life: Int, weapon: Weapon, lifeMax: Int) {
        self.name = name
        self.type = type
        self.life = life
        self.lifeMax = lifeMax
        self.weapon = weapon
    }

    func description(index: Int){
        print("")
        print("\(index). " + name + ": \(type)" + "- \(lifeMax) pv" + " - Weapon: \(self.weapon.type)" + " - Damage: \(self.weapon.damage)" + " - HealingStrength: \(self.weapon.healingStrength)")
    }
    func attack(target: Character) {
        target.life -= weapon.damage
        if target.life < 0  {
            target.life = 0
        }
        print("You take \(weapon.damage)pv to \(target.name)")
    }
}
