//
//  Theme.swift
//  Helpers
//
//  Created by Bibin Jacob Pulickal on 05/05/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//

import Foundation

public enum Theme: Int {

    case light, dark

    private static let themeKey = "themeKey"

    static var current: Theme {
        return Theme(rawValue: UserDefaults.standard.integer(forKey: themeKey)) ?? .light
    }

    static func setTheme(_ theme: Theme) {
        UserDefaults.standard.set(theme.rawValue, forKey: themeKey)
    }
}
