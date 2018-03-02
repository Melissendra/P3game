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
    var damage: Int
    var healingStrength: Int
    
    
// Properties' initialization
    init(damage: Int, healingStrength: Int) {
        self.damage = damage
        self.healingStrength = healingStrength
    }
}
