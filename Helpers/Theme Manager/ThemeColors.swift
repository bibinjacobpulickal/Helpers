//
//  ThemeColors.swift
//  Helpers
//
//  Created by Bibin Jacob Pulickal on 05/05/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//

import UIKit

public extension UIColor {

    var themeColor: UIColor {
        switch Theme.current {
        case .light:
            return .white
        case .dark:
            return .black
        }
    }

    var textColor: UIColor {
        switch Theme.current {
        case .light:
            return .black
        case .dark:
            return .white
        }
    }
}
