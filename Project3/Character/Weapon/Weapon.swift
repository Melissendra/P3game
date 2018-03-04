//
//  File.swift
//  Project3
//
//  Created by Gaelle Lefeuvre on 02/03/2018.
//  Copyright © 2018 Gaelle Lefeuvre. All rights reserved.
//

import Foundation

// creation Weapon Main class
class Weapon {
    var type: String
    var damage: Int
    var healingStrength: Int
    
    
// Properties' initialization
    init(type: String, damage: Int, healingStrength: Int) {
        self.type = type
        self.damage = damage
        self.healingStrength = healingStrength
    }
    
// Methods
    
    func weaponsDescription () {
        print(type + " - strength: \(damage)" + " - healing: \(healingStrength).")
    }
}
