//
//  ViewController.swift
//  rpgOop
//
//  Created by Aizazuddin Khaja on 2015-11-28.
//  Copyright © 2015 A2Z. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var printLbl: UILabel!
    
    @IBOutlet weak var playerHpLbl: UILabel!
    
    @IBOutlet weak var enemyHpLbl: UILabel!
    
    @IBOutlet weak var enemyImg: UIImageView!
    
    @IBOutlet weak var chestBtn: UIButton!
    
    @IBOutlet weak var attackBtn: UIButton!
    
    var player: Player!
    var enemy: Enemy!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        player = Player(name: "DirtyLaundry21", hp: 110, attackPwr: 20)
        
        playerHpLbl.text = "\(player.hp) HP"
    }

    func generateRandomEnemy() {
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0 {
            enemy = Kimara(startingHp: 50, attackPwr: 12)
        } else {
            enemy = DevilWizard(startingHp: 60, attackPwr: 15)
        }
    }
    
    @IBAction func onChestTapped(sender: AnyObject) {
    }
    
    @IBAction func attackTapped(sender: AnyObject) {
        
    }

}

