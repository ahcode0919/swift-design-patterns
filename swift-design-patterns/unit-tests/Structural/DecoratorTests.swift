//
//  DecoratorTests.swift
//  unit-tests
//
//  Created by Aaron Hinton on 10/29/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest

class DecoratorTests: XCTestCase {
    func testVehicleDecorator() {
        let vehicle = Vehicle(vehicleType: .car, bumper: .standard, towingPackage: true, wheels: .touring(size: ._250mm))
        let decoratedVehicle = VehicleDecorator(decoratedVehicle: vehicle)
        
        XCTAssertEqual(vehicle.bumper, decoratedVehicle.bumper)
        XCTAssertEqual(vehicle.towingPackage, decoratedVehicle.towingPackage)
        XCTAssertEqual(vehicle.vehicleType, decoratedVehicle.vehicleType)
        XCTAssertEqual(vehicle.wheels, decoratedVehicle.wheels)
    }
    
    func testTowingPackageDecorator() {
        let car = Vehicle(vehicleType: .car, bumper: .standard, towingPackage: false, wheels: .touring(size: ._250mm))
        let truck = Vehicle(vehicleType: .truck, bumper: .standard, towingPackage: false, wheels: .offroad(size: ._250mm))
        
        let decoratedCar = CarInstallTowingPackageDecorator(decoratedVehicle: car)
        let decoratedTruck = TruckInstallTowingPackageDecorator(decoratedVehicle: truck)
        decoratedCar.installTowingPackage()
        decoratedTruck.installTowingPackage()
        
        XCTAssertEqual(decoratedCar.bumper, .standardWithHitch)
        XCTAssertTrue(decoratedCar.towingPackage ?? false)
        XCTAssertEqual(decoratedTruck.bumper, .heavyDuty)
        XCTAssertTrue(decoratedTruck.towingPackage ?? false)
    }
}
