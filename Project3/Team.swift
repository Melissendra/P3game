//
//  Team.swift
//  Project3
//
//  Created by Gaelle Lefeuvre on 08/03/2018.
//  Copyright © 2018 Gaelle Lefeuvre. All rights reserved.
//

import Foundation

// Class where you create the function for creating your teams, with the specificities of each character
class Team {
    var characters = [Character]()
    var uniqueCharacterNames = [String]()
    
    // Create first team
    func createCharacter() -> Character? {
        var userChoice = 0
        var character: Character?
        
        print("")
        print("======================================================")
        print("For forming your equip, you must choose 3 characters differents. What are they?")
        print("Choose the 3 characters you want:")
        print("1. Magus: he'll cure you when necessary.")
        print("2. Behemoth: he'll frigthen your adversary by his height but he doesn't have a lot of strenght.")
        print("3. Gnome: if he isn't impressive whith is size but his axe'll give a lot pf damage.")
        print("4. Gladiator: he is a classic: good fighter, not exceptionel but good znd give good damage.")
        print("")
        print("======================================================")
        
        // To control optional and authorised the transformation data to Int
        repeat {
            if let data = readLine() {
                if let dataToInt = Int(data) {
                    userChoice = dataToInt
                }
            }
        } while userChoice != 1 && userChoice != 2 && userChoice != 3 && userChoice != 4
        
        print("Enter your character's name : ")

        // The first player must choose his team
        
        switch userChoice {
        case 1:
            let magus = WhiteMage(name: UniqueName.sharedInstance.uniqueName())
            character = magus
        case 2:
            let behemoth = Colossus(name: UniqueName.sharedInstance.uniqueName())
            character = behemoth
        case 3:
            let gnome = Dwarf(name: UniqueName.sharedInstance.uniqueName())
            character =  gnome
        case 4:
            let gladiator = Warrior(name: UniqueName.sharedInstance.uniqueName())
            character = gladiator
        default:
            break
        }
        return character
    }
    
    // The second player must choose his team
    
    func createCharacters() {
        for _ in 0..<3 {
            guard let character = createCharacter() else { return }
            characters.append(character)
        }
    }
    
    // Characters' description
    func characterAttributes() {
        if characters.count > 0 {
            print("")
            print("=======================")
            for i in 0..<characters.count {
                let character = characters[i]
                character.description(index: i + 1)
            }
        }else {
            print("")
            print("You don't have enough characters in your team!")
        }
    }
    
    // To name which character is dead, if is dead.
    func isDead() -> Bool{
        var isDead = false
        for character in characters {
            if character.life == 0 {
                isDead = true
                print("\(character.name) is dead!")
            }else {
                return false
            }
        }
        return isDead
    }
}


