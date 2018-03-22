//
//  Warriors.swift
//  Project3
//
//  Created by Gaelle Lefeuvre on 01/03/2018.
//  Copyright © 2018 Gaelle Lefeuvre. All rights reserved.
//

import Foundation

class Warrior: Character {
    init(name: String) {
        super.init(name: name,type: "Warrior", life: 100, weapon: Glave(), lifeMax: 100)
    }
    
    
}
