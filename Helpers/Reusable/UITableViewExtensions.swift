//
//  UITableViewExtensions.swift
//  Helpers
//
//  Created by Bibin Jacob Pulickal on 04/05/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//

import UIKit

public extension UITableView {

    func register<CellClass: UITableViewCell>(_ cell: CellClass.Type) {
        register(cell, forCellReuseIdentifier: cell.identifier)
    }

    func dequeue<CellClass: UITableViewCell>(
        _ class: CellClass.Type,
        for indexPath: IndexPath,
        configure: ((CellClass) -> Void)) -> UITableViewCell {
        let cell = dequeueReusableCell(withIdentifier: CellClass.identifier, for: indexPath)
        if let cell = cell as? CellClass {
            configure(cell)
        }
        return cell
    }
}
