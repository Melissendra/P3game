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
    var features: Feature
    var clothes: String
    
// Methodes' initialization
    init(name: String, life: Int, weapons: String, features: Features, clothes: String) {
        self.name = name
        self.life = life
        self.weapon = Weapons
        self.features = features
        self.clothes = clothes
    }
}
