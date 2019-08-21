//
//  CompositeTests.swift
//  unit-tests
//
//  Created by Aaron Hinton on 11/4/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest

class CompositeComponentTests: XCTestCase {
    var compositeComponent: CompositeComponent!
    let itemName = "Test"
    let itemDescription = "Test Component"
    let price = 1.25
    
    override func setUp() {
         super.setUp()
        compositeComponent = CompositeComponent(name: itemName, description: itemDescription, price: price)
    }
    
    func testCompositeComponent() {
        XCTAssertNotNil(compositeComponent)
    }
    
    func testDisplay() {
        let testString = "Name: \(itemName), Description:\(itemDescription)"
        XCTAssertEqual(compositeComponent.display(), testString)
    }
    
    func testAdd() {
        let newComponent = CompositeComponent(name: "Test2", description: "Test Component 2", price: 2.33)
        XCTAssertEqual(compositeComponent.compositeItems.count, 0)
        compositeComponent.add(compositeComponent: newComponent)
        XCTAssertEqual(compositeComponent.compositeItems.count, 1)
    }
    
    func testRemove() {
        let newComponent = CompositeComponent(name: "Test2", description: "Test Component 2", price: 2.33)
        compositeComponent.add(compositeComponent: newComponent)
        XCTAssertEqual(compositeComponent.compositeItems.count, 1)
        compositeComponent.remove(compositeComponent: newComponent)
        XCTAssertEqual(compositeComponent.compositeItems.count, 0)
    }
    
    func testGetName() {
        XCTAssertEqual(compositeComponent.getName(), itemName)
    }
    
    func testGetDescription() {
        XCTAssertEqual(compositeComponent.getDescription(), itemDescription)
    }
    
    func testGetChild() {
        let newComponent = CompositeComponent(name: "Test2", description: "Test Component 2", price: 2.33)
        compositeComponent.add(compositeComponent: newComponent)
        let childComponent = compositeComponent.getChild(i: 0)
        XCTAssertEqual(childComponent, newComponent)
        XCTAssertEqual(compositeComponent.compositeItems.count, 0)
    }
}
