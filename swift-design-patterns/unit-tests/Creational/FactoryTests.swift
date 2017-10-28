//
//  FactoryTests.swift
//  unit-tests
//
//  Created by Aaron Hinton on 10/27/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest

class FactoryTests: XCTestCase {
    var flowerFactory: FlowerFactory!
    
    override func setUp() {
        super.setUp()
        flowerFactory = FlowerFactory()
    }

    func testFlowerFactory() {
        let lotus = flowerFactory.createFlower(flower: .lotus)
        XCTAssertEqual(lotus.name, "Lotus")
        XCTAssertEqual(lotus.height, 4)
        XCTAssertEqual(lotus.color, .blue)
    }
}
