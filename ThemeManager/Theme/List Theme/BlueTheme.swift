//
//  BlueTheme.swift
//  ThemeManager
//
//  Created by nabilla on 15/11/20.
//  Copyright © 2020 nabilla. All rights reserved.
//

import UIKit

class BlueTheme: ThemeProtocol {

    var assets: Themeable {
        return ThemeAssets(
            labelAssets: LabelAssets(
                textColor: UIColor.blue
            ),
            buttonAssets: ButtonAssets (
                textColor: UIColor.blue, backgroundColor: .black
            ),
            viewAssets: ViewAssets (backgroundColor: .black)
        )
    }
}
