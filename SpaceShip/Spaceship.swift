//
//  Spaceship.swift
//  SpaceShip
//
//  Created by Mark Meretzky on 5/2/20.
//  Copyright © 2020 New York University School of Professional Studies. All rights reserved.
//

import UIKit

class Spaceship: UILabel {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    var name: String = "X";
    var health: Int = 100;
    
    var position: CGPoint = CGPoint.zero {
        didSet {
            updateUI();
        }
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder);
        frame.size = CGSize(width: 120.0, height: 120.0);
        backgroundColor = .yellow;
        numberOfLines = 0;
        position = CGPoint(x: 100.0, y: 100.0);
        updateUI();
    }
    
    func move(to newPosition: CGPoint) {
        position = newPosition;
    }
    
    func moveLeft() {
        position.x -= 1;
    }

    func moveRight() {
        position.y += 1;
    }

    func wasHit() {
        health -= 5;
    }
    
    func updateUI() {
        text = description;
    }
    
    override var description: String {
        center = position;
        let format: String = """
        Name: %@
        Health: %d
        Pos: %.0f, %.0f
        """;
        return String(format: format, name, health, position.x, position.y);
    }

}
