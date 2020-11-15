//
//  UIImage+Extensions.swift
//  ThemeManager
//
//  Created by nabilla on 14/11/20.
//  Copyright © 2020 nabilla. All rights reserved.
//

import UIKit

extension UIImageView {

    /// This function will change color of image from asset
    /// - Parameter color: UIColor
    func setColorImage(color: UIColor) {
        guard let image = self.image else {
            print("Cant change image color")
            return
        }
        UIGraphicsBeginImageContextWithOptions(image.size, false, UIScreen.main.scale)
        let context = UIGraphicsGetCurrentContext()

        color.setFill()

        context!.translateBy(x: 0, y: image.size.height)
        context!.scaleBy(x: 1.0, y: -1.0)

        context!.setBlendMode(CGBlendMode.colorBurn)
        let rect = CGRect(x: 0, y: 0, width: image.size.width, height: image.size.height)
        context!.draw(image.cgImage!, in: rect)

        context!.setBlendMode(CGBlendMode.sourceIn)
        context!.addRect(rect)
        context!.drawPath(using: CGPathDrawingMode.fill)

        let coloredImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.image = coloredImage
    }
}
