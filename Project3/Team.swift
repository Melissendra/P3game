//
//  Team.swift
//  Project3
//
//  Created by Gaelle Lefeuvre on 08/03/2018.
//  Copyright © 2018 Gaelle Lefeuvre. All rights reserved.
//

import Foundation
class Team {
    var characters = [Character]()
    
    
    
    
    func createCharacters() {
        
        for _ in 0..<3 {
            guard let character = createCharacter() else { return }
            characters.append(character)
        }
    }

    func createCharacter() -> Character? {
       var userChoice = 0
        var character: Character?
        var characterName = ""
        
        print("")
        print("======================================================")
        print("For forming your equip, you must choose 3 characters differents. What are they?")
        print("Choose the 3 characters you want:")
        print("1. Magus")
        print("2. Behemoth")
        print("3. Gnome")
        print("4. Gladiator")
        print("")
        print("======================================================")
        
        
        repeat {
           userChoice = inputInt()
        } while userChoice != 1 && userChoice != 2 && userChoice != 3 && userChoice != 4
        
        print("Enter your character's name !")
        
        repeat {
            characterName = inputString()
            
        } while characterName == ""
        
        switch userChoice {
        case 1:
            let magus = WhiteMage(name: characterName)
            character = magus
        case 2:
            let behemoth = Colossus(name: characterName)
            character = behemoth
        case 3:
            let gnome = Dwarf(name: characterName)
            character =  gnome
        case 4:
            let gladiator = Warrior(name: characterName)
            character = gladiator
        default:
            break
        }
        return character
    }
    
    // change players' choice to Int and unwrap readLine optional
    func inputInt() -> Int {
        guard let data = readLine() else { return 0 }
        guard let dataToInt = Int(data) else {return 0 }
        return dataToInt
    }
    
    func inputString() -> String {
        guard let data = readLine() else { return ""}
        return data
    }
    
}
