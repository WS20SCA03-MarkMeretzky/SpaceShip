//
//  Fighter.swift
//  SpaceShip
//
//  Created by Mark Meretzky on 5/2/20.
//  Copyright © 2020 New York University School of Professional Studies. All rights reserved.
//

import UIKit

class Fighter: Spaceship {

    var weapon: String = "Laser";
    var remainingFirePower: Int = 100;
    
    required init?(coder: NSCoder) {
        super.init(coder: coder);
        backgroundColor = .orange;
        position = CGPoint(x: 200.0, y: 200.0);
        
    }

    func fire() {
        if remainingFirePower > 0 {
            remainingFirePower -= 1;
        } else {
            print("You have no more fire power.");
        }
    }
    
    override var description: String {
        return super.description + "\nWeap: \(weapon)\nPower: \(remainingFirePower)";
    }

}
