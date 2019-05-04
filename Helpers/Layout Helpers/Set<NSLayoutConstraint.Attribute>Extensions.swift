//
//  Set<NSLayoutConstraint.Attribute>Extensions.swift
//  Helpers
//
//  Created by Bibin Jacob Pulickal on 29/04/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//

import UIKit

public extension Set where Element == NSLayoutConstraint.Attribute {

    static var allSides: Set<NSLayoutConstraint.Attribute> {
        return [.top, .left, .bottom, .right]
    }

    static var horizontal: Set<NSLayoutConstraint.Attribute> {
        return [.left, .right]
    }

    static var vertical: Set<NSLayoutConstraint.Attribute> {
        return [.top, .bottom]
    }

    static var bothCenters: Set<NSLayoutConstraint.Attribute> {
        return [.centerX, .centerY]
    }

    static var bothDimensions: Set<NSLayoutConstraint.Attribute> {
        return [.width, .height]
    }
}
