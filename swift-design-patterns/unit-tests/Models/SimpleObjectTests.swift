//
//  SimpleObjectTests.swift
//  unit-tests
//
//  Created by Aaron Hinton on 10/28/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest

class SimpleObjectTests: XCTestCase {
    func testSimpleObject() {
        let simpleObject = SimpleObject(text: "Test")
        XCTAssertEqual(simpleObject.text, "Test")
    }
}
