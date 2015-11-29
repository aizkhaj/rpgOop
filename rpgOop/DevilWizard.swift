//
//  DevilWizard.swift
//  rpgOop
//
//  Created by Aizazuddin Khaja on 2015-11-29.
//  Copyright © 2015 A2Z. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    
    override var loot: [String] {
        return ["Magic Wand", "Dark Amulet", "Salted Beef"]
    }
    
    override var type: String {
        return "Devil Wizard"
    }
    
    
}