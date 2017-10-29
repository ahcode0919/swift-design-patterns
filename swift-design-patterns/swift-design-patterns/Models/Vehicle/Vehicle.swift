//
//  Vehicle.swift
//  swift-design-patterns
//
//  Created by Aaron Hinton on 10/28/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

protocol IVehicle {
    var vehicleType: VehicleType? { get set }
    
    var bumper: Bumper? { get set }
    
    var towingPackage: Bool? { get set }
    
    var wheels: Wheel? { get set }
}

struct Vehicle: IVehicle, Equatable {    
    var vehicleType: VehicleType?
    
    var bumper: Bumper?
    
    var towingPackage: Bool?
    
    var wheels: Wheel?
    
    init(vehicleType: VehicleType) {
        self.vehicleType = vehicleType
    }
    
    init(vehicleType: VehicleType, bumper: Bumper, towingPackage: Bool, wheels: Wheel) {
        self.vehicleType = vehicleType
        self.bumper = bumper
        self.towingPackage = towingPackage
        self.wheels = wheels
    }
    
    static func ==(lhs: Vehicle, rhs: Vehicle) -> Bool {
        return lhs.vehicleType == lhs.vehicleType &&
            lhs.bumper == rhs.bumper &&
            lhs.towingPackage == rhs.towingPackage &&
            lhs.wheels == rhs.wheels
    }
}
