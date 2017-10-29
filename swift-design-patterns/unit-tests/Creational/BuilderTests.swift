//
//  BuilderTests.swift
//  unit-tests
//
//  Created by Aaron Hinton on 10/28/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest

class BuilderTests: XCTestCase {
    func testVehicleBuilder() {
        let builder = BuilderSportsCar()
        let vehicle = builder.getResult()
        let sportsCarFields: [Any?] = [vehicle.bumper, vehicle.towingPackage, vehicle.wheels]
        XCTAssertEqual(vehicle.vehicleType, .car)
        XCTAssertEqual(sportsCarFields.flatMap { $0 }.count, 0)
        
        builder.buildBumper()
        XCTAssertEqual(builder.getResult().bumper, .standard)

        builder.buildTowingPackage()
        XCTAssertEqual(builder.getResult().towingPackage, false)
        
        builder.buildWheels()
        XCTAssertEqual(builder.getResult().wheels, .touring(size: ._250mm))
    }
    
    func testBuildVehicle() {
        let director = Director()
        let builder = BuilderUtilityTruck()
        director.buildVehicle(builder: builder)
        let vehicle = builder.getResult()
        let testVehicle = Vehicle(vehicleType: .truck, bumper: .heavyDuty, towingPackage: true, wheels: .offroad(size: ._250mm))
        
        XCTAssertEqual(vehicle, testVehicle)
    }
}
