//
//  AbstractFactory.swift
//  swift-design-patterns
//
//  Created by Aaron Hinton on 10/27/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

///The abstract factory pattern is designed to build objects grouped in families without having to know the
///concrete class needed to create the object.

protocol IVehiclePartFactory {
    func createWheels(size: WheelSize) -> Wheel
    
    func createBumber(towingPackage: Bool) -> Bumper
}

class CarPartFactory: IVehiclePartFactory {
    func createWheels(size: WheelSize) -> Wheel {
        switch(size) {
        case ._200mm:
            return .touring(size: ._200mm)
        case ._250mm:
            return .touring(size: ._250mm)
        }
    }
    
    func createBumber(towingPackage: Bool) -> Bumper {
        return towingPackage ? .standardWithHitch : .standard
    }
}

class TruckPartFactory: IVehiclePartFactory {
    func createWheels(size: WheelSize) -> Wheel {
        switch(size) {
        case ._200mm:
            return .offroad(size: ._200mm)
        case ._250mm:
            return .offroad(size: ._250mm)
        }
    }
    
    func createBumber(towingPackage: Bool) -> Bumper {
        return towingPackage ? .heavyDuty : .standardWithHitch
    }
}

class VehiclePartFactory {
    func getPartFactory(vehicleType: VehicleType) -> IVehiclePartFactory {
        switch(vehicleType) {
        case .car:
            return CarPartFactory()
        case .truck:
            return TruckPartFactory()
        }
    }
}

// Usage
class VehicleFactoryExample {
    func example(vehicleType: VehicleType, wheelSize: WheelSize, towingPackage: Bool) -> Vehicle {
        let vehiclePartFactory = VehiclePartFactory()
        let partFactory = vehiclePartFactory.getPartFactory(vehicleType: vehicleType)
        
        let wheels = partFactory.createWheels(size: ._250mm)
        let bumper = partFactory.createBumber(towingPackage: towingPackage)
        
        return Vehicle(vehicleType: vehicleType,
                       bumper: bumper,
                       towingPackage: towingPackage,
                       wheels: wheels)
    }
}
