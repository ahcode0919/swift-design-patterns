//
//  Plant.swift
//  swift-design-patterns
//
//  Created by Aaron Hinton on 10/28/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

protocol Plant {
    var name: String { get }
    var color: Color { get }
    var height: Int { get set }
    
    init(name: String, color: Color, height: Int)
}
