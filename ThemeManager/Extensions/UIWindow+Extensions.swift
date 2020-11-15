//
//  UIWindow+Extensions.swift
//  ThemeManager
//
//  Created by nabilla on 15/11/20.
//  Copyright © 2020 nabilla. All rights reserved.
//

import UIKit

public extension UIWindow {

    /// Unload all views and add them back
    /// Used for applying `UIAppearance` changes to existing views
    func reload() {
        subviews.forEach { view in
            view.removeFromSuperview()
            addSubview(view)
        }
    }
}
