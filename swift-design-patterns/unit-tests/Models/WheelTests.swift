//
//  WheelTests.swift
//  unit-tests
//
//  Created by Aaron Hinton on 10/28/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest

class WheelTests: XCTestCase {
    func testEquatable() {
        let wheel = Wheel.touring(size: ._200mm)
        let matchingWheel = Wheel.touring(size: ._200mm)
        let nonMatchingType = Wheel.offroad(size: ._250mm)
        let nonMatchingSize = Wheel.touring(size: ._250mm)
        
        XCTAssert(wheel == matchingWheel)
        XCTAssertFalse(wheel == nonMatchingType)
        XCTAssertFalse(wheel == nonMatchingSize)
    }
}
