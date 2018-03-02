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
    let name: String
    var life: Int
    var weapon: Weapon

    
// properties' initialization
    init(name: String, life: Int, weapon: Weapon) {
        self.name = name
        self.life = life
        self.weapon = weapon
    }
}
