//
//  Alertable.swift
//  Helpers
//
//  Created by Bibin Jacob Pulickal on 05/05/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//

import UIKit

protocol Alertable: Presentable {
    func showAlert(title: String?, message: String?, action: ((UIAlertAction) -> Void)?, completion: (() -> Void)?)
}

extension Alertable {

    func showAlert(
        title: String? = "Alert",
        message: String? = "Something went wrong!",
        action: ((UIAlertAction) -> Void)? = nil,
        completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OKAY", style: .default, handler: action))
        present(alert, animated: true, completion: completion)
    }
}

extension UIViewController: Alertable { }
