//
//  Vehicle.swift
//  swift-design-patterns
//
//  Created by Aaron Hinton on 10/28/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

struct Vehicle: Equatable {
    
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
