//
//  Prototype.swift
//  swift-design-patterns
//
//  Created by Aaron Hinton on 10/27/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

///The prototype pattern is used to create a new object by duplicating existing objects called prototypes,
///and they have a cloning capability.

protocol AbstractCar {
    var name: String? { get }
    var color: Color? { get }
    
    init(name: String?, color: Color?)
    
    func clone() -> AbstractCar
}

class Car: AbstractCar {
    var name: String?
    var color: Color?
    
    required init(name: String?, color: Color?) {
        self.name = name
        self.color = color
    }
    
    func clone() -> AbstractCar {
        return Car(name: name, color: color)
    }
}

class PrototypeExample {
    let mustang = Car(name: "Mustang", color: .black)
    
    func getMustang() -> AbstractCar {
        return mustang.clone()
    }
}
