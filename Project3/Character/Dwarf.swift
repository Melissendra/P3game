//
//  Dwarf.swift
//  Project3
//
//  Created by Gaelle Lefeuvre on 02/03/2018.
//  Copyright © 2018 Gaelle Lefeuvre. All rights reserved.
//

import Foundation

// My little man with his big axe which gives a lot of damages
class Dwarf: Character {
    init(name: String) {
        super.init(name: name, type: "Dwarf", life: 80, weapon: Axe(), lifeMax: 80)
    }
}
