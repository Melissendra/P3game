//
//  WhiteMage.swift
//  Project3
//
//  Created by Gaelle Lefeuvre on 02/03/2018.
//  Copyright © 2018 Gaelle Lefeuvre. All rights reserved.
//

import Foundation

// My magus for healing my team's character
class WhiteMage: Character {
    init(name: String) {
        super.init(name: name, type: "WhiteMage",life: 75, weapon: Staff(), lifeMax: 75)
    }
  
// To heal the taget you choose
    func heal(target:Character) {
        target.life += weapon.healingStrength
        if target.life > lifeMax {
            target.life = lifeMax
        }
        print("you healed \(weapon.healingStrength) pv to \(target.name)!")
    }
}
