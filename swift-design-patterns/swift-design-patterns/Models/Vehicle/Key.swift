//
//  Key.swift
//  swift-design-patterns
//
//  Created by Aaron Hinton on 10/30/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

class Key: IAbstractBridge {
    var concreteImpl: ImplementationBase
    
    init(implementation: ImplementationBase) {
        self.concreteImpl = implementation
    }
    
    func turnOn() -> Bool {
        return concreteImpl.run()
    }
}
