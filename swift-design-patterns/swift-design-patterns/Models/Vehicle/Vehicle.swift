//
//  Vehicle.swift
//  swift-design-patterns
//
//  Created by Aaron Hinton on 10/28/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

struct Vehicle {
    var vehicleType: VehicleType
    
    var bumper: Bumper
    
    var towingPackage: Bool
    
    var wheels: Wheel
}
