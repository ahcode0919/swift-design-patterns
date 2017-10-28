//
//  AbstractFactoryTests.swift
//  unit-tests
//
//  Created by Aaron Hinton on 10/27/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest

class AbstractFactoryTests: XCTestCase {
    var vehiclePartFactory: VehiclePartFactory!
    var carPartFactory: IVehiclePartFactory!
    var truckPartFactory: IVehiclePartFactory!

    override func setUp() {
        super.setUp()
        vehiclePartFactory = VehiclePartFactory()
        carPartFactory = vehiclePartFactory.getPartFactory(vehicleType: .car)
        truckPartFactory = vehiclePartFactory.getPartFactory(vehicleType: .truck)
    }
    
    func testCreateWheels() {
        let carWheel = carPartFactory.createWheels(size: ._200mm)
        let truckWheel = truckPartFactory.createWheels(size: ._250mm)
        XCTAssertEqual(carWheel, Wheel.touring(size: ._200mm))
        XCTAssertEqual(truckWheel, Wheel.offroad(size: ._250mm))
    }
    
    func testCreateBumper() {
        let carBumper = carPartFactory.createBumber(towingPackage: true)
        let truckBumper = truckPartFactory.createBumber(towingPackage: true)
        XCTAssertEqual(carBumper, Bumper.standardWithHitch)
        XCTAssertEqual(truckBumper, Bumper.heavyDuty)
    }
    
    func testVehicleFactoryExample() {
        let vehicleFactoryExample = VehicleFactoryExample()
        let vehicle = vehicleFactoryExample.example(vehicleType: .truck, wheelSize: ._250mm, towingPackage: true)
        XCTAssertEqual(vehicle.bumper, .heavyDuty)
        XCTAssertEqual(vehicle.towingPackage, true)
        XCTAssertEqual(vehicle.vehicleType, .truck)
        XCTAssertEqual(vehicle.wheels, .offroad(size: ._250mm))
    }
}
