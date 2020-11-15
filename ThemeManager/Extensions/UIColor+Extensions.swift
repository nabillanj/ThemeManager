//
//  UIColor+Extensions.swift
//  ThemeManager
//
//  Created by nabilla on 14/11/20.
//  Copyright © 2020 nabilla. All rights reserved.
//

import UIKit

extension UIColor {


    /// This function created so we can input string as parameter to convert to UIColor
    /// Usage:
    /// UIColor(hex: "fffff") or UIColor(hext: "#ffff")
    /// - Parameters:
    ///   - hex: String of Color Hex, can used this too '#'
    ///   - alpha: CGFloat of opacity, default value = 1
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        var chars = Array(hex.hasPrefix("#") ? hex.dropFirst() : hex[...])
        switch chars.count {
        case 3: chars = chars.flatMap { [$0, $0] }; fallthrough
        case 6: chars.append(contentsOf: ["F","F"])
        case 8: break
        default: break
        }
        self.init(red: .init(strtoul(String(chars[2...3]), nil, 16)) / 255,
                green: .init(strtoul(String(chars[4...5]), nil, 16)) / 255,
                 blue: .init(strtoul(String(chars[6...7]), nil, 16)) / 255,
                alpha: .init(strtoul(String(chars[0...1]), nil, 16)) / 255)
    }
}
