//
//  Composite.swift
//  swift-design-patterns
//
//  Created by Aaron Hinton on 11/4/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

protocol ICompositeComponent {
    func display() -> String
    func add(compositeComponent: CompositeComponent)
    func remove(compositeComponent: CompositeComponent)
    func getName() -> String
    func getDescription() -> String
    func getChild(i: Int) -> CompositeComponent?
}

class CompositeComponent: Equatable {
    var compositeItems = [CompositeComponent]()
    private var name: String
    private var description: String
    private var price: Double
    
    init(name: String, description: String, price: Double) {
        self.name = name
        self.description = description
        self.price = price
    }
    
    func display() -> String {
        var text = "Name: \(name), Description:\(description)"
        for item in compositeItems {
            text.append(" | \(item.display())")
        }
        return text
    }
    
    func add(compositeComponent: CompositeComponent) {
        compositeItems.append(compositeComponent)
    }
    
    func remove(compositeComponent: CompositeComponent) {
        compositeItems.removeElement(object: compositeComponent)
    }
    
    func getName() -> String {
        return name
    }
    
    func getDescription() -> String {
        return description
    }
    
    func getChild(i: Int) -> CompositeComponent? {
        guard compositeItems.count > i else {
            return nil
        }
        return compositeItems.remove(at: i)
    }
    
    static func ==(lhs: CompositeComponent, rhs: CompositeComponent) -> Bool {
        return lhs.name == rhs.name && lhs.description == rhs.description && lhs.price == rhs.price
    }
}

class CompositeItem: CompositeComponent {

}

class CompositeCategory: CompositeComponent {
    
}

class CompositeManager {
    var catalog: [CompositeComponent]
    
    init(catalog: [CompositeComponent]) {
        self.catalog = catalog
    }
    
    func displayCatalog() -> String {
        var text = ""
        for item in catalog {
            text.append(": \(item.display()) :")
        }
        return text
    }
}
