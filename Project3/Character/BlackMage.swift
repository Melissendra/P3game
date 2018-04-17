//
//  BlackMage.swift
//  Project3
//
//  Created by Gaelle Lefeuvre on 02/04/2018.
//  Copyright © 2018 Gaelle Lefeuvre. All rights reserved.
//

import Foundation

// My character bonus 
class BlackMage: Character {
    init(name: String) {
        super.init(name: "BlackMage", type: "BlackMage", life: 60, weapon: FireStaff(), lifeMax: 60)
    }    
}

