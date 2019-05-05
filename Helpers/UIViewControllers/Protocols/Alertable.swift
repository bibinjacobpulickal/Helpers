//
//  Alertable.swift
//  Helpers
//
//  Created by Bibin Jacob Pulickal on 05/05/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//

import UIKit

protocol Alertable: Presentable {
    @discardableResult
    func showAlert(title: String?, message: String?, actionTitles: [String], highlightedActionIndex: Int, action: ((UIAlertAction) -> Void)?, completion: (() -> Void)?) -> UIAlertController
}

extension Alertable {

    @discardableResult
    func showAlert(
        title: String? = "Alert",
        message: String? = "Something went wrong!",
        actionTitles: [String] = [],
        highlightedActionIndex: Int = 0,
        action: ((UIAlertAction) -> Void)? = nil,
        completion: (() -> Void)? = nil) -> UIAlertController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let allActionTitles = actionTitles.isEmpty ? ["OKAY"] : actionTitles
        allActionTitles.enumerated().forEach({ (index, actionTitle) in
            let action = UIAlertAction(title: actionTitle, style: .default, handler: action)
            alert.addAction(action)
            if highlightedActionIndex == index {
                alert.preferredAction = action
            }
        })
        present(alert, animated: true, completion: completion)
        return alert
    }
}

extension UIViewController: Alertable { }
