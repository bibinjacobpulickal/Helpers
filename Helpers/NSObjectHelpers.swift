//
//  NSObjectHelpers.swift
//  Helpers
//
//  Created by Bibin Jacob Pulickal on 29/04/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//

public protocol Initializable {
    init()
}

extension NSObject: Initializable { }

public func create<Object>(_ setup: (Object) -> Void) -> Object where Object: Initializable {
    let object = Object()
    setup(object)
    return object
}
