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
    
    func home() {
        print("Hello ! Here you'll be inviting to choose your equip ! Each equip must contains 3 differents characters. To help you in your choice here are theirs features and singularity ! ")
    }
    
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

}
