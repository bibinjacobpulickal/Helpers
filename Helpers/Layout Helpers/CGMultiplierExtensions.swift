//
//  CGMultiplierExtensions.swift
//  Helpers
//
//  Created by Bibin Jacob Pulickal on 29/04/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//

import UIKit

public struct CGMultiplier {

    public var width: CGFloat

    public var height: CGFloat

    public init(w width: CGFloat = 1, h height: CGFloat = 1) {
        self.width  = width
        self.height = height
    }

    public static let one = CGMultiplier()
}
