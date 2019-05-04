//
//  Reusable.swift
//  Helpers
//
//  Created by Bibin Jacob Pulickal on 04/05/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//

import UIKit

protocol Reusable: class {
    static var identifier: String { get }
}

extension Reusable {
    static var identifier: String {
        return String(describing: self)
    }
}

extension UITableViewCell: Reusable { }

extension UICollectionViewCell: Reusable { }
