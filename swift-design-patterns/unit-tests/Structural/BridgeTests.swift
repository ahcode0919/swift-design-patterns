//
//  BridgeTests.swift
//  unit-tests
//
//  Created by Aaron Hinton on 10/29/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest

class BridgeTests: XCTestCase {
    func testBridgeVehicle() {
        let bridgeVehicle = BridgeVehicle()
        let key = Key(implementation: bridgeVehicle)
        XCTAssertTrue(key.turnOn())
        XCTAssertTrue(bridgeVehicle.running ?? false)
    }
}
