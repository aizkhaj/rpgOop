//
//  Kimara.swift
//  rpgOop
//
//  Created by Aizazuddin Khaja on 2015-11-29.
//  Copyright © 2015 A2Z. All rights reserved.
//

import Foundation

class Kimara: Enemy {
    
    let IMMUNE_MAX = 15
    
    override var loot: [String] {
        return ["Tough Hide", "Kimara Venom", "Rare Trident"]
    }
    
    override var type: String {
        return "Kimara"
    }
    
    override func attemptAttack(attackPwr: Int) -> Bool {
        if attackPwr >= IMMUNE_MAX {
            return super.attemptAttack(attackPwr)
        } else {
            return false
        }
    }
     //you can use super.# to call parent item..at least in this case
}