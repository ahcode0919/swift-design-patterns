//
//  Subject.swift
//  swift-design-patterns
//
//  Created by Aaron Hinton on 10/29/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

protocol Subject {
    func request(flag: Bool, closure: (() -> ())?) -> Bool
}

class RealSubject: Subject {
    func request(flag: Bool, closure: (() -> ())? = nil) -> Bool {
        if flag == false {
            //Long process
            sleep(2)
            closure?()
            return false
        }
        closure?()
        return true
    }
}
