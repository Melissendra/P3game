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
        print("")
        print("Hello ! Here you'll be inviting to choose your equip ! Each equip must contains 3 differents characters. To help you in your choice here are theirs features and singularities! ")
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
    
    // Players chooses their's characters
    
    func characterChoice() -> Int {
        var playerChoice = 0
        
    // Transformation data to Int and control optional
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
        repeat{
            for i in 0..<2 {
                
                // First team begins
                
                teams[i].characterAttributes()
                print("")
                print("Please choose a character!")
                
                    // Choose the characters' first team who's going to play first

                let character = teams[i].characters[characterChoice() - 1]
                print("")
                print("You choose \(character.name)!")
                
                    //random pop of the chest bonus
                chest(character: character)
                
                    // The player's choice : Magus or assailant?
                
                if let whiteMage = character as? WhiteMage {
                    
                    // if it's a magus list teams one
                    teams[i].characterAttributes()
                    print("")
                    print("Choose who you want to heal :")
                
                    // heal the character
                    whiteMage.heal(target: teams[i].characters[characterChoice() - 1])
                    
                }else {
                    // show adversary team if it's an assailant
                      print("Here is your adversary team!")
                    
                    if i == 0 {
                      
                        followingFight(index: i, aggressor: character)
                        
                        if teams[i + 1].isDead() {
                            print("The second team is dead! you win!")
                            return
                        }
                        print("")
                        
                    }else {
                        
                        // It's an attacker, show second team's characters
                        followingFight(index: i, aggressor: character)
                        
                        if teams[i - 1].isDead() {
                            print("you loose!!! The winner is Team 2 !!!!")
                            return
                        }
                        print("")
                    }
                }
            }
        }while true
    }
    
    // The function for the chest pop with two weapons
    func chest(character: Character) {
        let randomNumber = arc4random_uniform(15)
        if randomNumber < 5 {
            print("A chest just pop!")
            if character is WhiteMage {
                character.weapon = AshStaff()
            print("Your WhiteMage is equiped by AshStaff!")
            }else {
                character.weapon = TwoHandsGlave()
            print("Your \(character.name) is equiped by TwoHandsGlave!")
            }
        }
    }
    
    // My bonus function a blackMagus can pop whith som condition
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
    
    func followingFight(index: Int, aggressor: Character) {
        teams[index + 1].characterAttributes()
        
        // Choose the character team 1 wants to attack
        print("")
        print("Choose which characer you want to attack:")
        let adversary = teams[index + 1].characters[characterChoice() - 1]
        // Attack the playerchoice
        
        // Bonus random pop with some condition
        if blackMageCanPop(team: teams[index]) {
            let randomNumber = arc4random_uniform(10)
            if randomNumber < 5 {
                print("A BlackMagus just pop in your team!!")
                let blackMage = BlackMage(name: "BlackMage")
                blackMage.attack(target: adversary)
            }else {
                aggressor.attack(target: adversary)
            }
        }else {
            aggressor.attack(target: adversary)
        }
    }
}


