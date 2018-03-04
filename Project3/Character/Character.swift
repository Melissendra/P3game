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

    
// properties' initialization
    init(type: String, life: Int, weapon: Weapon) {
        self.type = type
        self.life = life
        self.weapon = weapon
    }
    
// Method
    func characthersDescription() {
        print(type + "\(life)pv" + "\(weapon)")
    }
}
