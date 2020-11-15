//
//  ThemeManager.swift
//  ThemeManager
//
//  Created by nabilla on 14/11/20.
//  Copyright © 2020 nabilla. All rights reserved.
//

import UIKit

let SelectedThemeKey = "SelectedTheme"

class ThemeManager {

    /// Will return current selected theme
    /// - Returns: Theme
    static func currentTheme() -> Theme {
        return UserPreferences.getUserTheme()
    }

    /// This function only to save theme to user default
    /// But can be use to change general view color, such example: UINavigationBar, etc
    /// Usage:
    /// 1. ThemeManager.applyTheme(theme: .red)
    /// 2.  view..backgroundColor = ThemeManager.currentTheme().primaryColor
    /// - Parameter theme: Enum of Theme
    static func applyTheme(theme: Theme) {
        UserDefaults.standard.setValue(theme.rawValue, forKey: SelectedThemeKey)
        UserDefaults.standard.synchronize()
    }

    /// This function will implement and reload view to follow selected Theme
    /// Usage:
    /// - ThemeManager.apply(.red)
    /// - Parameter theme:Enum of Theme
    static func apply(_ theme: Theme) {
        self.updateView(theme: theme)
        UIApplication.shared.delegate?.window??.reload()

        // Currently we using to directly update from selected theme color, and not using protocol
        // let appTheme = theme.appTheme
        // self.updateView(theme: appTheme)
    }

    private static func updateView(theme: Theme) {
        BaseLabel.appearance().textColor = theme.textColor
        BaseImage.appearance().setColorImage(color: .blue)
        BaseView.appearance().backgroundColor = theme.primaryColor
        BaseButton.appearance().backgroundColor  = theme.primaryColor
        BaseButton.appearance().setTitleColor(theme.textColor, for: .normal)
    }

    // currently we dont need this.
    private static func updateViews(themeAssets: ViewAssets) {
        //appTheme.extension?()
        BaseLabel.appearance().textColor = themeAssets.backgroundColor
    }
}
