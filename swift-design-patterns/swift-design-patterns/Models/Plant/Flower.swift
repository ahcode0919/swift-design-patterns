//
//  Flower.swift
//  swift-design-patterns
//
//  Created by Aaron Hinton on 10/28/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

enum Flower {
    case rose, lotus
}

struct Rose: Plant {
    var name: String
    var color: Color
    var height: Int
}

struct Lotus: Plant {
    var name: String
    var color: Color
    var height: Int
}
