//
//  VehicleTests.swift
//  unit-tests
//
//  Created by Aaron Hinton on 10/28/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest

class VehicleTests: XCTestCase {
    func testEquatable() {
        let testVehicle = Vehicle(vehicleType: .car, bumper: .standard, towingPackage: false, wheels: .touring(size: ._200mm))
        let matchingVehicle = Vehicle(vehicleType: .car, bumper: .standard, towingPackage: false, wheels: .touring(size: ._200mm))
        let nonMatchingVehicle = Vehicle(vehicleType: .truck, bumper: .heavyDuty, towingPackage: true, wheels: .offroad(size: ._200mm))
        XCTAssertEqual(testVehicle, matchingVehicle)
        XCTAssertNotEqual(testVehicle, nonMatchingVehicle)
    }
}
