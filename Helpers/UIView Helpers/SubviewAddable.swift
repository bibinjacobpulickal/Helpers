//
//  SubviewAddable.swift
//  Helpers
//
//  Created by Bibin Jacob Pulickal on 05/05/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//

import UIKit

public protocol SubviewAddable {
    func addSubview(_ view: UIView)
    func addSubview(_ view: UIView, completion: (UIView) -> Void)
    func addSubviews(_ view: UIView...)
    func addSubviews(_ view: UIView..., completion: ([UIView]) -> Void)
}

public extension SubviewAddable {

    func addSubview(_ view: UIView, completion: (UIView) -> Void) {
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        completion(view)
    }

    func addSubviews(_ views: UIView...) {
        views.forEach { addSubview($0) }
    }

    func addSubviews(_ views: UIView..., completion: ([UIView]) -> Void) {
        views.forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            addSubview($0)
        }
        completion(views)
    }
}

extension UIView: SubviewAddable { }
