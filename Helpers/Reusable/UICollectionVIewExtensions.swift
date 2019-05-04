//
//  UICollectionVIewExtensions.swift
//  Helpers
//
//  Created by Bibin Jacob Pulickal on 04/05/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//

import UIKit

public extension UICollectionView {

    func register<CellClass: UICollectionViewCell>(_ cell: CellClass.Type) {
        register(cell, forCellWithReuseIdentifier: cell.identifier)
    }

    func dequeue<CellClass: UICollectionViewCell>(
        _ class: CellClass.Type,
        for indexPath: IndexPath,
        configure: ((CellClass) -> Void)) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: CellClass.identifier, for: indexPath)
        if let cell = cell as? CellClass {
            configure(cell)
        }
        return cell
    }
}
