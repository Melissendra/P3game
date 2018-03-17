//
//  Input.swift
//  Project3
//
//  Created by Gaelle Lefeuvre on 16/03/2018.
//  Copyright © 2018 Gaelle Lefeuvre. All rights reserved.
//

import Foundation

class Input {
    static func inputInt() -> Int {
        guard let data = readLine() else { return 0 }
        guard let dataToInt = Int(data) else { return 0 }
        return dataToInt
    }
    
    static func inputString() -> String {
        guard let data = readLine() else { return ""}
        return data
    }
}
