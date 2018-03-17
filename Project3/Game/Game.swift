//
//  Game.swift
//  Project3
//
//  Created by Gaelle Lefeuvre on 02/03/2018.
//  Copyright © 2018 Gaelle Lefeuvre. All rights reserved.
//

import Foundation

class Game {
    var teams = [Team]()
    
    
// function to say hello and present what is expect to players
    func home() {
        print("Hello ! Here you'll be inviting to choose your equip ! Each equip must contains 3 differents characters. To help you in your choice here are theirs features and singularity ! ")
    }

// teams creation
    func start() {
        home()
        for _ in 0..<2 {
        let team = createTeam()
            teams.append(team)
        }
        fight()
    }
    
    func createTeam() -> Team {
        let team = Team()
        team.createCharacters()
    return team
    }

    func fight() {
        var playerChoice = 0
        func characterChoice() {
            var playerChoice: Int
            print("")
            print("Your team is composed by:")
            teams[0].characterAttributes()
            print("Please choose your character:")
            
            repeat {
                playerChoice = Input.inputInt()
            } while playerChoice != 1 || playerChoice != 2 || playerChoice != 3
        }
        
        // lister character de l'équipe 1
        teams[0].characterAttributes()
        
        // selectionner 1 des membres de l'équipe numero 1
        characterChoice()
        let character = teams[0].characters[playerChoice - 1]
        
        // déterminer si le perso choisi est un mage ou un attaquant
        
        if let whiteMage = character as? WhiteMage {
        // si c'est un mage
            if character is WhiteMage {
                // lister l'équipe 1
                teams[0].characterAttributes()
                 // selectionner le perso à soigner
                characterChoice()
                 // soigner le perso
            whiteMage.heal(target: character)
                print("You cured \(character) for 20 pv!")
        }else {
            // c'est un attaquant
            // lister l'équipe numero 2
                print("Here is your adversary team!")
                teams[1].characterAttributes()
            // selectionner le perso que l'on veut attaquer dans cette liste
                print("Choose which characer you wan to attack:")
                repeat {
                    playerChoice = Input.inputInt()
                } while playerChoice != 1 && playerChoice != 2 && playerChoice != 3
                let adversary = teams[1].characters[playerChoice - 1]
            // action d'attaquer
                character.attack(target:adversary)
                print("You took \(adversary)")
            }
        }
    }
}


