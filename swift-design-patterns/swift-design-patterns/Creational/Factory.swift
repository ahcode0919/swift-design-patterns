//
//  Factory.swift
//  swift-design-patterns
//
//  Created by Aaron Hinton on 10/27/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

///The factory method pattern is one of the most used patterns in software designs.
///The purpose of this pattern is to abstract the creation of an object.
///The factory method lets a class defer instantiation to subclasses.

class FlowerFactory {
    func createFlower(flower: Flower) -> Plant {
        switch flower {
        case .rose:
            return Rose(name: "Red Rose", color: .red, height: 2)
        case .lotus:
            return Lotus(name: "Lotus", color: .blue, height: 4)
        }
    }
}
