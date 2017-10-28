//
//  PrototypeTests.swift
//  unit-tests
//
//  Created by Aaron Hinton on 10/27/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation
import XCTest
@testable import swift_design_patterns

class PrototypeTests: XCTestCase {
    var aTestCar: Car!
    
    override func setUp() {
        aTestCar = Car(name: "Test", color: .red)
    }
    
    func testCar() {
        XCTAssertEqual(aTestCar.name, "Test")
        XCTAssertEqual(aTestCar.color, .red)
    }
    
    func testClone() {
        let newCar = aTestCar.clone()
        XCTAssertEqual(newCar.name, "Test")
        XCTAssertEqual(newCar.color, .red)
    }
    
    func testClient() {
        let mustang = PrototypeExample().getMustang()
        XCTAssertEqual(mustang.name, "Mustang")
        XCTAssertEqual(mustang.color, .black)
    }
}
