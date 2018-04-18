//
//  Colossus.swift
//  Project3
//
//  Created by Gaelle Lefeuvre on 02/03/2018.
//  Copyright © 2018 Gaelle Lefeuvre. All rights reserved.
//

import Foundation

// My giant who is imposant, resistant but don't have a lot of strength
class Colossus: Character {
    init(name: String) {
        super.init(name: name, type: "Colossus", life: 150, weapon: FightingStick(), lifeMax: 150)
    }
}
