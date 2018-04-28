//
//  TwoHandsGlave.swift
//  Project3
//
//  Created by Gaelle Lefeuvre on 27/03/2018.
//  Copyright © 2018 Gaelle Lefeuvre. All rights reserved.
//

import Foundation

// tank's weapon in the chest
class TwoHandsGlave: Weapon {
    init() {
       super.init(type: "TwoHandsGlave", damage: 200, healingStrength: 0)
    }
}
