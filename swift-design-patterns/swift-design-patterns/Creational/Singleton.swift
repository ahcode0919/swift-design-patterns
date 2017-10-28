//
//  Singleton.swift
//  swift-design-patterns
//
//  Created by Aaron Hinton on 10/27/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

///The singleton pattern ensures that a class has only one instance and provides a global point of access to it,
///and at this point, it returns an instance of this class.

class Singleton {
    var timeOfInit: String
    
    static let sharedInstance = Singleton()
    
    private init() {
        timeOfInit = Date().timeIntervalSince1970.description
    }
}
