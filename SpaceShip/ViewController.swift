//
//  ViewController.swift
//  SpaceShip
//
//  Created by Mark Meretzky on 5/2/20.
//  Copyright © 2020 New York University School of Professional Studies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var spaceship: Spaceship!;
    @IBOutlet weak var fighter: Fighter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch: UITouch = touches.first {
            let point: CGPoint = touch.location(in: view);
            if spaceship.frame.contains(point) {
                spaceship.move(to: point);    //Move the spaceship to a new location.
            }
            if fighter.frame.contains(point) {
                fighter.move(to: point);    //Move the spaceship to a new location.
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch: UITouch = touches.first {
            let point: CGPoint = touch.location(in: view);
            //spaceship.move(to: point);    //Move the spaceship to a new location.
            if spaceship.frame.contains(point) {
                spaceship.move(to: point);    //Move the spaceship to a new location.
            }
            if fighter.frame.contains(point) {
                fighter.move(to: point);    //Move the spaceship to a new location.
            }
        }
    }
    
    
}

