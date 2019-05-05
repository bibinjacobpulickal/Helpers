//
//  Notifyable.swift
//  Helpers
//
//  Created by Bibin Jacob Pulickal on 05/05/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//

import UIKit

protocol Notifyable {
    func addNotificationObserver(name: Notification.Name, selector: Selector)
    func removeNotificationObserver(name: Notification.Name)
    func removeNotificationsObserver()
}

extension Notifyable {

    func addNotificationObserver(name: Notification.Name, selector: Selector) {
        NotificationCenter.default.addObserver(self, selector: selector, name: name, object: nil)
    }

    func removeNotificationObserver(name: Notification.Name) {
        NotificationCenter.default.removeObserver(self, name: name, object: nil)
    }

    func removeNotificationsObserver() {
        NotificationCenter.default.removeObserver(self)
    }
}

extension UIViewController: Notifyable { }
