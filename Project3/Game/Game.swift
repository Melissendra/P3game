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
    }
    
    func createTeam() -> Team {
        let team = Team()
        team.createCharacters()
    return team
    }

// Choose a character in your team
    func teamComposition() {
        print("")
        print("your adversary's team is composed by:")
        teams[1].characterAttributes()
        print("")
        print("Choose one character of your team which is composed by:")
        teams[0].characterAttributes()
        
    }
    
    func fight() {
    
        
    }
}


