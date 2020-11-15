//
//  UserPreferences.swift
//  ThemeManager
//
//  Created by nabilla on 15/11/20.
//  Copyright © 2020 nabilla. All rights reserved.
//

import Foundation

let themeValue = "Theme"

class UserPreferences {

    static func getUserTheme() -> Theme {
        let theme = UserDefaults.standard.integer(forKey: themeValue)
        return Theme(rawValue: theme) ?? .orange
    }

    static func setUserTheme(theme: Theme) {
        UserDefaults.standard.set(theme.rawValue, forKey: themeValue)
        ThemeManager.apply(theme)
    }
}
