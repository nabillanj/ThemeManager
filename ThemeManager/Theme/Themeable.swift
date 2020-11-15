//
//  Themeable.swift
//  ThemeManager
//
//  Created by nabilla on 15/11/20.
//  Copyright © 2020 nabilla. All rights reserved.
//

import UIKit

protocol Themeable {
    var labelAssets: LabelAssets { get }
    var buttonAssets: ButtonAssets { get }
    var viewAssets: ViewAssets { get }
}

struct LabelAssets {
    var textColor: UIColor
}

struct ButtonAssets {
    var textColor: UIColor
    var backgroundColor: UIColor
}

struct ViewAssets {
    var backgroundColor: UIColor
}

struct ThemeAssets: Themeable {
    var labelAssets: LabelAssets
    var buttonAssets: ButtonAssets
    var viewAssets: ViewAssets
}
