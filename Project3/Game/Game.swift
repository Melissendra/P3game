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
        print("")
        print("Team 2: ")
    return team
    }
    
    func characterChoice() -> Int {
        var playerChoice = 0
        repeat {
            if let data = readLine() {
                if let dataToInt = Int(data) {
                    playerChoice = dataToInt
                }
            }
        } while playerChoice != 1 && playerChoice != 2 && playerChoice != 3
        return playerChoice
    }

    func fight() {
//        var playerChoice = 0
        repeat{
            for i in 0..<2 {
                
                // lister character de l'équipe 1s
                
                teams[i].characterAttributes()
                print("")
                print("Please choose a character!")
                
                // selectionner 1 des membres de l'équipe numero 1
//                repeat {
//                    playerChoice = Input.inputInt()
//                } while playerChoice != 1 && playerChoice != 2 && playerChoice != 3
                let character = teams[i].characters[characterChoice() - 1]
                print("")
                print("You choose \(character.name)!")
                chest(character: character)
                
                // déterminer si le perso choisi est un mage ou un attaquant
                
                if let whiteMage = character as? WhiteMage {
                    // si c'est un mage
                    // lister l'équipe 1
                    
                    teams[i].characterAttributes()
                    print("")
                    print(" Choose who you want to heal :")
                    
                    // selectionner le perso à soigner
                    
//                    repeat {
//                        playerChoice = Input.inputInt()
//                    } while playerChoice != 1 && playerChoice != 2 && playerChoice != 3
                    
                    // soigner le perso
                    
                    whiteMage.heal(target: teams[i].characters[characterChoice() - 1])
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
//                        repeat {
//                            playerChoice = Input.inputInt()
//                        } while playerChoice != 1 && playerChoice != 2 && playerChoice != 3
                        let adversary = teams[i + 1].characters[characterChoice() - 1]
                        // action d'attaquer
//                        character.attack(target: adversary)
                        
                        if blackMageCanPop(team: teams[i]) {
                            let randomNumber = arc4random_uniform(15)
                            if randomNumber < 5 {
                                let blackMage = BlackMage(name: "BlackMage")
                                blackMage.attack(target: adversary)
                            }else {
                                character.attack(target: adversary)
                            }
                        }
                        
                        if teams[i + 1].isDead() {
                            return
                        }
                        print("")
                        
                    }else {
                        // c'est un attaquant
                        // lister l'équipe numero 2
                        
                        teams[i - 1].characterAttributes()
                        
                        // selectionner le perso que l'on veut attaquer dans cette liste
                        print("")
                        print("Choose which characer you want to attack:")
                        
//                        repeat {
//                            playerChoice = Input.inputInt()
//                        } while playerChoice != 1 && playerChoice != 2 && playerChoice != 3
                        let adversary = teams[i - 1].characters[characterChoice() - 1]
                        // action d'attaquer
                        //character.attack(target: adversary)
                        
                        if blackMageCanPop(team: teams[i]) {
                            let randomNumber = arc4random_uniform(15)
                            if randomNumber < 5 {
                                let blackMage = BlackMage(name: "Blackmage")
                                blackMage.attack(target: adversary)
                            }else {
                                character.attack(target: adversary)
                            }
                        }
                        if teams[i - 1].isDead() {
                            return
                        }
                        print("")
                    }
                }
            }
        }while true
    }
    
    func chest(character: Character) {
        let randomNumber = arc4random_uniform(15)
        if randomNumber < 5 {
            print()
            if character is WhiteMage {
                character.weapon = AshStaff()
            print("Your WhiteMage is equiped by AshStaff!")
            }else {
                character.weapon = TwoHandsGlave()
            print("Your \(character.name) is equiped by TwoHandsGlave!")
            }
        }
    }
    
    func blackMageCanPop(team: Team)-> Bool {
        var characterAlive = 0
        for character in team.characters {
            if character.life > 0 {
                characterAlive += 1
            }
        }
        if characterAlive == 1 {
            return true
        }else {
            return false
        }
    }
}

