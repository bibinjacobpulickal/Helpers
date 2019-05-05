//
//  UIViewControllerHelpers.swift
//  Helpers
//
//  Created by Bibin Jacob Pulickal on 05/05/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//

import UIKit

extension UIViewController {

    convenience init(backgroundColor: UIColor) {
        self.init()
        self.view.backgroundColor    = backgroundColor
    }
}
