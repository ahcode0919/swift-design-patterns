//
//  SingletonTests.swift
//  unit-tests
//
//  Created by Aaron Hinton on 10/27/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest

class SingletonTests: XCTestCase {
    func testSingleton() {
        let singletonInstance1 = Singleton.sharedInstance
        let singletonInstance2 = Singleton.sharedInstance
        XCTAssertEqual(singletonInstance1.timeOfInit, singletonInstance2.timeOfInit)
    }
}
