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
        repeat{
            for i in 0..<2 {
                
                // lister character de l'équipe 1
                
                teams[i].characterAttributes()
                print("Please choose a character!")
                
                // selectionner 1 des membres de l'équipe numero 1
                
                repeat {
                    teams[i].characterLife()
                    playerChoice = Input.inputInt()
                } while playerChoice != 1 && playerChoice != 2 && playerChoice != 3
                let character = teams[i].characters[playerChoice - 1]
                print("")
                print("You choose \(playerChoice)!")
                
                // déterminer si le perso choisi est un mage ou un attaquant
                
                if let whiteMage = character as? WhiteMage {
                    // si c'est un mage
                    // lister l'équipe 1
                    
                    teams[i].characterAttributes()
                    print("")
                    print(" Choose who you want to heal :")
                    
                    // selectionner le perso à soigner
                    repeat {
                        playerChoice = Input.inputInt()
                    } while playerChoice != 1 && playerChoice != 2 && playerChoice != 3
                    
                    // soigner le perso
                    
                    whiteMage.heal(target: teams[i].characters[playerChoice - 1])
                    print("")
                    
                }else {
                      print("Here is your adversary team!")
                    
                    if i == 0 {
                        
                        // c'est un attaquant
                        // lister l'équipe numero 2
                      
                        teams[i + 1].characterAttributes()
                        
                        // selectionner le perso que l'on veut attaquer dans cette liste
                        print("")
                        print("Choose which characer you want to attack:")
                        
                        repeat {
                            teams[i + 1].characterLife()
                            playerChoice = Input.inputInt()
                        } while playerChoice != 1 && playerChoice != 2 && playerChoice != 3
                        let adversary = teams[i + 1].characters[playerChoice - 1]
                        // action d'attaquer
                        character.attack(target: adversary)
                        print("")
                        
                    }else {
                        // c'est un attaquant
                        // lister l'équipe numero 2
                        
                        teams[i - 1].characterAttributes()
                        
                        // selectionner le perso que l'on veut attaquer dans cette liste
                        print("")
                        print("Choose which characer you want to attack:")
                        
                        repeat {
                            playerChoice = Input.inputInt()
                        } while playerChoice != 1 && playerChoice != 2 && playerChoice != 3
                        let adversary = teams[i - 1].characters[playerChoice - 1]
                        // action d'attaquer
                        character.attack(target: adversary)
                        print("")
                        
                    }
                }
            }
        }while true
    }
}

