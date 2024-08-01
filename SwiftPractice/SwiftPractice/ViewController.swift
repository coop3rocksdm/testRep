//
//  ViewController.swift
//  SwiftPractice
//
//  Created by Дмитро Солоп on 30.07.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var tank = Tank()
        var soldier = Soldier()
        var ship = Ship()
        
        var armyArray:[Army] = [tank, soldier, ship]
        
        func startAttack(items: [Army]){
            for item in items {
                item.attack()
            }
        }
        startAttack(items: armyArray)
        
    }
    protocol Army{
        func attack()
    }
    class Soldier: Army{
        var name = "Soldier"
        func attack() {
            print("\(name) - attack")
        }
        init(name: String = "Soldier") {
            self.name = name
        }

    }
    class Tank: Army{
        var name = "Tank"
        func attack() {
            print("\(name) - attack")
        }
        init(name: String = "Tank") {
            self.name = name
        }
        
    }
    class Ship: Army{
        var name = "Ship"
        func attack() {
            print("\(name) - attack")
        }
        init(name: String = "Ship") {
            self.name = name
        }
        
    }
    

}

