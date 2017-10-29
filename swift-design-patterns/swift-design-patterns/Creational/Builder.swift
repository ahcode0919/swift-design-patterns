//
//  Builder.swift
//  swift-design-patterns
//
//  Created by Aaron Hinton on 10/28/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

//The main purpose of the builder pattern is to abstract the building of complex objects from its actual construction.
//Having the same construction process can create different representations of the product. This pattern can be used when:
//A client needs to construct complex objects without having to know its implementation
//A client needs to construct complex objects that need to have several implementations or representations

protocol AbstractVehicleBuilder {
    var vehicle: Vehicle { get set }
    
    func buildBumper()
    
    func buildTowingPackage()
    
    func buildWheels()
    
    func getResult() -> Vehicle
}

class BuilderSportsCar: AbstractVehicleBuilder {
    var vehicle: Vehicle = Vehicle(vehicleType: .car)

    func buildBumper() {
        vehicle.bumper = .standard
    }
    
    func buildTowingPackage() {
        vehicle.towingPackage = false
    }
    
    func buildWheels() {
        vehicle.wheels = Wheel.touring(size: ._250mm)
    }
    
    func getResult() -> Vehicle {
        return vehicle
    }
}

class BuilderUtilityTruck: AbstractVehicleBuilder {
    var vehicle: Vehicle = Vehicle(vehicleType: .truck)

    func buildBumper() {
        vehicle.bumper = .heavyDuty
    }
    
    func buildTowingPackage() {
        vehicle.towingPackage = true
    }
    
    func buildWheels() {
        vehicle.wheels = Wheel.offroad(size: ._250mm)
    }
    
    func getResult() -> Vehicle {
        return vehicle
    }
}

class Director {
    init() { }
    
    func buildVehicle(builder: AbstractVehicleBuilder) {
        builder.buildBumper()
        builder.buildTowingPackage()
        builder.buildWheels()
    }
}

class BuilderExample {
    func buildVehicleExample() -> Vehicle {
        let director = Director()
        let utlityTruckBuilder = BuilderUtilityTruck()
        
        director.buildVehicle(builder: utlityTruckBuilder)
        return utlityTruckBuilder.getResult()
    }
}

class BuilderWithClosureExample {
    func buildSimpleObjectExample() -> SimpleObject {
        let simpleObject = SimpleObject {
            $0.text = "Test"
        }
        return simpleObject
    }
}
