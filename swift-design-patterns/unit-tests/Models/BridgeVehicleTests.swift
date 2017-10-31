//
//  BridgeVehicle.swift
//  unit-tests
//
//  Created by Aaron Hinton on 10/30/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest

class BridgeVehicleTests: XCTestCase {
    func testBridgeVehicle() {
        let bridgeVehicle = BridgeVehicle()
        XCTAssertNotNil(bridgeVehicle)
    }
    
    func testBridgeVehicleRun() {
        let bridgeVehicle = BridgeVehicle()
        XCTAssert(bridgeVehicle.run())
        XCTAssert(bridgeVehicle.running ?? false)
    }
}
