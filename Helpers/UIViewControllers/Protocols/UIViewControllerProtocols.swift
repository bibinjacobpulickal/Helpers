//
//  UIViewControllerProtocols.swift
//  Helpers
//
//  Created by Bibin Jacob Pulickal on 05/05/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//

import UIKit

protocol Presentable {
    func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)?)
}

protocol Dismissable {
    func dismiss(animated flag: Bool, completion: (() -> Void)?)
}
