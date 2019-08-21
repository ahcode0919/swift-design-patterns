//
//  Array+Extension.swift
//  swift-design-patterns
//
//  Created by Aaron Hinton on 11/4/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

extension Array {
    mutating func removeElement<T: Equatable>(object: T) {
        for i in 0..<self.count {
            if let element = self[i] as? T, element == object {
                self.remove(at: i)
            }
        }
    }
}
