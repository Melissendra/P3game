//
//  UniqueName.swift
//  Project3
//
//  Created by Gaelle Lefeuvre on 06/04/2018.
//  Copyright © 2018 Gaelle Lefeuvre. All rights reserved.
//

import Foundation

 class UniqueName {
    static let sharedInstance = UniqueName()
    
    var uniqueCharacterNames = [String]()
    
    private init() {}
    
    func uniqueName() -> String {
        var characterName = ""
        repeat {
            if let data = readLine() {
                characterName = data
                if uniqueCharacterNames.contains(characterName) {
                    print("Choose another name, this one is already taken!")
                    characterName = ""
                }else {
                    uniqueCharacterNames.append(characterName)
                }
            }
        } while characterName == ""
        return characterName
    }
}
