//
//  Proxy.swift
//  swift-design-patterns
//
//  Created by Aaron Hinton on 10/29/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

//The objective of the proxy pattern is to substitute an object (the subject) with another one that will control its
//access. The object that substitutes the subject shares the same interface, so it is transparent from the consumer's
//perspective. The proxy is often a small (public) object that stands in for a more complex (private) object that is
//activated once certain circumstances are clear. The proxy adds a level of indirection by accepting requests from a
//client object and passing them to the real subject as necessary.

// There are several types of proxies, which are as follows:

//A virtual proxy: This allows you to create a "big" object at the appropriate time (used when the creation process is slow)
//A remote proxy: This allows you to access an object that is available on another environment (such as on a multiplayer game server)
//An authentication proxy: This check whether the access permission for a request is correct or not

class SubjectNoWaitProxy: Subject {
    var realSubject: RealSubject
    
    init(realSubject: RealSubject) {
        self.realSubject = realSubject
    }
    
    func request(flag: Bool, closure: (() -> ())? = nil) -> Bool {
        if flag == false {
            closure?()
            return false
        }
        return realSubject.request(flag: flag, closure: closure)
    }
}
