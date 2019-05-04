//
//  UIViewHelpers.swift
//  Helpers
//
//  Created by Bibin Jacob Pulickal on 04/05/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//

import UIKit

public extension UIView {

    func addSubviews(_ views: UIView...) {
        views.forEach { addSubview($0) }
    }

    convenience init(backgroundColor: UIColor) {
        self.init()
        self.backgroundColor = backgroundColor
    }
}
