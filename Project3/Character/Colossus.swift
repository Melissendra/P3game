//
//  Colossus.swift
//  Project3
//
//  Created by Gaelle Lefeuvre on 02/03/2018.
//  Copyright © 2018 Gaelle Lefeuvre. All rights reserved.
//

import Foundation

class Colossus: Character {
    init(name: String) {
        super.init(name: name, type: "Colossus", life: 100, weapon: FightingStick(), lifeMax: 200)
    }
}
