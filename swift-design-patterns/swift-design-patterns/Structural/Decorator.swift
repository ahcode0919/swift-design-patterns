//
//  Decorator.swift
//  swift-design-patterns
//
//  Created by Aaron Hinton on 10/29/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

//The main objective of this pattern is to dynamically add new functionalities to an object.
//The interface of the object will not be modified, so from the client's perspective, this is fully transparent.
//This pattern is an alternative to the addition of a subclass that adds functionalities to its parent class.
//A key implementation point in the decorator pattern is that decorators both inherit the original class and contain an instantiation of it.
//This pattern can be used when:
//A system adds dynamically new functionalities to an object, without having to modify its interface,
//   which means without having to modify the client of this object
//A system manages the behavior that can be dynamically removed
//The use of inheritance is not a good option because of an already complex class hierarchy”

protocol TowingPackageInstallation {
    func installTowingPackage()
}

class VehicleDecorator: IVehicle {
    var vehicleType: VehicleType?
    
    var bumper: Bumper?
    
    var towingPackage: Bool?
    
    var wheels: Wheel?
    
    private let decoratedVehicle: IVehicle?
    
    init(decoratedVehicle: IVehicle) {
        self.decoratedVehicle = decoratedVehicle
        self.vehicleType = decoratedVehicle.vehicleType
        self.bumper = decoratedVehicle.bumper
        self.towingPackage = decoratedVehicle.towingPackage
        self.wheels = decoratedVehicle.wheels
    }
}

//Can also be implemented with extensions.

class CarInstallTowingPackageDecorator: VehicleDecorator, TowingPackageInstallation {
    func installTowingPackage() {
        self.bumper = .standardWithHitch
        self.towingPackage = true
    }
}

class TruckInstallTowingPackageDecorator: VehicleDecorator, TowingPackageInstallation {
    func installTowingPackage() {
        self.bumper = .heavyDuty
        self.towingPackage = true
    }
}

