//
//  Wheel.swift
//  swift-design-patterns
//
//  Created by Aaron Hinton on 10/28/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

enum Wheel: Equatable {
    case offroad(size: WheelSize), touring(size: WheelSize)
    
    static func ==(lhs: Wheel, rhs: Wheel) -> Bool {
        switch (lhs, rhs) {
        case let (.offroad(l), .offroad(r)):
            return l == r
        case let (.touring(l), .touring(r)):
            return l == r
        default:
            return false
        }
    }
}
