//
//  Enemy.swift
//  rpgOop
//
//  Created by Aizazuddin Khaja on 2015-11-29.
//  Copyright © 2015 A2Z. All rights reserved.
//

import Foundation

class Enemy: Character {
    
    var loot: [String] {
        return ["Rusty Dagger", "Cracked Buckler"]
    }
    
    var type: String {
        return "Grunt"
    }
    
    func dropLoot() -> String? {
        
        if !isAlive {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            // this is important, in swift, you may often find youself 'casting' when you are dealing with different data types and you need to work with that type for something. It's like conversion.
            return loot[rand]
        }
        
        return nil
    }
    
}