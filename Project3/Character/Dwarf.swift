//
//  Dwarf.swift
//  Project3
//
//  Created by Gaelle Lefeuvre on 02/03/2018.
//  Copyright © 2018 Gaelle Lefeuvre. All rights reserved.
//

import Foundation

class Dwarf: Character {
    init(name: String) {
        super.init(name: name, type: "Dwarf", life: 80, weapon: Axe())
    }
}
