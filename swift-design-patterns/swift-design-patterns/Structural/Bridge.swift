//
//  Bridge.swift
//  swift-design-patterns
//
//  Created by Aaron Hinton on 10/29/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation
//The bridge pattern decouples an abstraction from its implementation. This means that this pattern separates the
//implementation of an object from its representation and interface. Thus, firstly, the implementation can fully be
//encapsulated, and secondly, the implementation and representation can independently change, without having any
//constraints between them.

protocol IAbstractBridge {
    var concreteImpl: ImplementationBase { get set }
    
    func turnOn() -> Bool
}

protocol ImplementationBase {
    var running: Bool? { get set }
    
    func run() -> Bool
}

class BridgeVehicle: ImplementationBase {
    var running: Bool?
    
    func run() -> Bool {
        running = true
        return true
    }
}

class Key: IAbstractBridge {
    var concreteImpl: ImplementationBase
    
    init(implementation: ImplementationBase) {
        self.concreteImpl = implementation
    }
    
    func turnOn() -> Bool {
        return concreteImpl.run()
    }
}
