//
//  SubjectTests.swift
//  unit-tests
//
//  Created by Aaron Hinton on 10/29/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest

class RealSubjectTests: XCTestCase {
    func testRequest() {
        let realSubject = RealSubject()
        XCTAssertTrue(realSubject.request(flag: true))
        
        let asyncExpectation = XCTestExpectation(description: "Async Expectation")
        let asyncResponse = realSubject.request(flag: false) {
            asyncExpectation.fulfill()
        }
        XCTAssertEqual(XCTWaiter.wait(for: [asyncExpectation], timeout: 3), .completed)
        XCTAssertFalse(asyncResponse)
    }
}
