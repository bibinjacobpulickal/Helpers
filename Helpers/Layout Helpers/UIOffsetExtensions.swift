//
//  UIOffsetExtensions.swift
//  Helpers
//
//  Created by Bibin Jacob Pulickal on 29/04/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//

import UIKit

public extension UIOffset {
    init(v vertical: CGFloat = 0, h horizontal: CGFloat) {
        self.init(horizontal: horizontal, vertical: vertical)
    }
    init(h horizontal: CGFloat, v vertical: CGFloat = 0) {
        self.init(horizontal: horizontal, vertical: vertical)
    }
    init(_ both: CGFloat) {
        self.init(horizontal: both, vertical: both)
    }
}
