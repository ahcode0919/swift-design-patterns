//
//  SimpleObject.swift
//  swift-design-patterns
//
//  Created by Aaron Hinton on 10/28/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

class SimpleObject {
    typealias SimpleObjectBuilder = (SimpleObject) -> Void
    
    var text: String?
    
    init(text: String) {
        self.text = text
    }
    
    init(builder: SimpleObjectBuilder) {
        builder(self)
    }
}
