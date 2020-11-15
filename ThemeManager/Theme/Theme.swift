//
//  Theme.swift
//  ThemeManager
//
//  Created by nabilla on 14/11/20.
//  Copyright © 2020 nabilla. All rights reserved.
//

import UIKit

protocol ThemeProtocol {
    var assets: Themeable { get }
    // This var needed if we want to custom something in our theme view, currently we dont use this.
    // var `extension`: (() -> Void)? { get }
}

enum Theme: Int {
    case red
    case blue
    case black
    case orange
    case custom

    var primaryColor: UIColor {
        switch self {
        case .red:
            return .red
        case .blue:
            return .blue
        case .orange:
            return .orange
        case .black:
            return .black
        case .custom:
            return .white
        }
    }

    var secondaryColor: UIColor {
        switch self {
        case .red:
            return .red
        case .blue:
            return .blue
        case .orange:
            return .orange
        case .black:
            return .black
        case .custom:
            return .white
        }
    }

    var textColor: UIColor {
        switch self {
        case .red:
            return .black
        case .blue:
            return .white
        case .orange:
            return .black
        case .black:
            return .white
        case .custom:
            return .black
        }
    }
}

extension Theme {
    var appTheme: ThemeProtocol {
        switch self {
            case .blue: return BlueTheme()
        default:
            break
        }
        return BlueTheme()
    }
}
