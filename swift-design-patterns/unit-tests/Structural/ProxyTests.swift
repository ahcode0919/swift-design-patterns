//
//  ProxyTests.swift
//  unit-tests
//
//  Created by Aaron Hinton on 10/29/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest

class ProxyTests: XCTestCase {
    func testRealSubject() {
        let realSubject = RealSubject()
        let subjectNoWaitProxy = SubjectNoWaitProxy(realSubject: realSubject)
        let expectation1 = XCTestExpectation(description: "True Request")
        let expectation2 = XCTestExpectation(description: "False Request")
        
        let trueRequestResult = subjectNoWaitProxy.request(flag: true) {
            expectation1.fulfill()
        }
        let falseRequestResult = subjectNoWaitProxy.request(flag: false) {
            expectation2.fulfill()
        }
        let result = XCTWaiter.wait(for: [expectation1, expectation2], timeout: 1)
        XCTAssertEqual(result, .completed)
        XCTAssertTrue(trueRequestResult)
        XCTAssertFalse(falseRequestResult)
    }
}
