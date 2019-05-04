//
//  UIEdgeInsetsExtensions.swift
//  Helpers
//
//  Created by Bibin Jacob Pulickal on 29/04/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//

import UIKit

public extension UIEdgeInsets {
    init(t top: CGFloat = 0, l left: CGFloat = 0, b bottom: CGFloat = 0, r right: CGFloat = 0) {
        self.init(top: top, left: left, bottom: bottom, right: right)
    }
    init(_ all: CGFloat) {
        self.init(top: all, left: all, bottom: -all, right: -all)
    }
    init(h horizontal: CGFloat = 0, v vertical: CGFloat = 0) {
        self.init(top: vertical, left: horizontal, bottom: -vertical, right: -horizontal)
    }
}
