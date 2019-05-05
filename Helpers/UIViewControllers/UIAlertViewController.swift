//
//  UIAlertViewController.swift
//  Helpers
//
//  Created by Bibin Jacob Pulickal on 05/05/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//

import UIKit

extension UIViewController {

    func showAlert(
        title: String? = "Alert",
        message: String? = "Something went wrong!",
        action: ((UIAlertAction) -> Void)? = nil,
        completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OKAY", style: .default, handler: action))
        present(alert, animated: true, completion: completion)
    }

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
