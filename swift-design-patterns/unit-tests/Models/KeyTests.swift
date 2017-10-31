//
//  KeyTests.swift
//  unit-tests
//
//  Created by Aaron Hinton on 10/30/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest

class KeyTests: XCTestCase {
    var bridgeVehicle: BridgeVehicle!
    
    override func setUp() {
        super.setUp()
        bridgeVehicle = BridgeVehicle()
    }
    
    func testKey() {
        let key = Key(implementation: bridgeVehicle)
        XCTAssertNotNil(key.concreteImpl as? BridgeVehicle)
    }
    
    func testTurnOn() {
        let key = Key(implementation: bridgeVehicle)
        XCTAssert(key.turnOn())
    }
}
