//
//  WhiteMage.swift
//  Project3
//
//  Created by Gaelle Lefeuvre on 02/03/2018.
//  Copyright © 2018 Gaelle Lefeuvre. All rights reserved.
//

import Foundation

class WhiteMage: Character {
    init(name: String) {
        super.init(name: name, type: "WhiteMage",life: 75, weapon: Staff(), lifeMax: 75)
    }
    
    func heal(target:Character) {
        target.life += weapon.healingStrength
        print("you healed \(weapon.healingStrength) pv to \(target.name)!")
    }
}
