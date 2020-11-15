//
//  GeneralTheme.swift
//  ThemeManager
//
//  Created by nabilla on 15/11/20.
//  Copyright © 2020 nabilla. All rights reserved.
//

import Foundation

class GeneralTheme: ThemeProtocol {

    var assets: Themeable {
        let theme = UserPreferences.getUserTheme()
        return ThemeAssets(
            labelAssets: LabelAssets(textColor: theme.textColor),
            buttonAssets: ButtonAssets(textColor: theme.textColor,
                                       backgroundColor: theme.primaryColor),
            viewAssets: ViewAssets(backgroundColor: theme.primaryColor))
    }
}
