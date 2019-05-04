//
//  CGSizeExtensions.swift
//  Helpers
//
//  Created by Bibin Jacob Pulickal on 29/04/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//

import UIKit

public extension CGSize {
    init(w width: CGFloat = 0, h height: CGFloat = 0) {
        self.init(width: width, height: height)
    }
    init(_ both: CGFloat) {
        self.init(width: both, height: both)
    }
}
