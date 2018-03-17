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
    
    // create first team
    func createCharacter() -> Character? {
        var userChoice = 0
        var character: Character?
        var characterName = ""
        
        print("")
        print("======================================================")
        print("For forming your equip, you must choose 3 characters differents. What are they?")
        print("Choose the 3 characters you want:")
        print("1. Magus: he'll cure you when necessary.")
        print("2. Behemoth: he'll frigthen your adversary by his height but he doesn't have a lot of strenght !")
        print("3. Gnome: if he isn't impressive whith is size but his axe'll give a lot pf damage !")
        print("4. Gladiator: he is a classic: good fighter, not exceptionel but good znd give good damage ! ")
        print("")
        print("======================================================")
        
        
        repeat {
            userChoice = Input.inputInt()
        } while userChoice != 1 && userChoice != 2 && userChoice != 3 && userChoice != 4
        
        print("Enter your character's name : ")
        
        repeat {
            characterName = Input.inputString()
            
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
    
    // create second team
    
    func createCharacters() {
        for _ in 0..<3 {
            guard let character = createCharacter() else { return }
            characters.append(character)
        }
        characterAttributes()
    }
    
    //characters description
    func characterAttributes () {
        if characters.count > 0 {
            print("")
            print("=======================")
            for i in 0..<characters.count {
                let character = characters[i]
                character.description(index: i+1)
            }
        }else {
            print("")
            print("You don't have enough characters in your team!")
        }
    }
}
