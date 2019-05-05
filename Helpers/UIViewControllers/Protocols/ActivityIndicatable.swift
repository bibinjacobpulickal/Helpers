//
//  ActivityIndicatable.swift
//  Helpers
//
//  Created by Bibin Jacob Pulickal on 05/05/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//

import UIKit

protocol ActivityIndicatable: Presentable & Dismissable {
    func presentActivityIndicator(completion: (() -> Void)?)
    func dismissActivityIndicator(completion: (() -> Void)?)
}

extension ActivityIndicatable {

    func presentActivityIndicator(
        completion: (() -> Void)? = nil) {
        let animation = UIAlertController(title: "Please wait...", message: nil, preferredStyle: .alert)
        let indicator = UIActivityIndicatorView(style: .gray)
        indicator.startAnimating()
        indicator.translatesAutoresizingMaskIntoConstraints = false
        animation.view.addSubview(indicator)
        indicator.centerYAnchor.constraint(equalTo: animation.view.centerYAnchor).isActive = true
        indicator.centerXAnchor.constraint(equalTo: animation.view.centerXAnchor, constant: -90).isActive = true
        present(animation, animated: true, completion: completion)
    }

    func dismissActivityIndicator(
        completion: (() -> Void)? = nil) {
        dismiss(animated: true, completion: completion)
    }
}

extension UIViewController: ActivityIndicatable { }
