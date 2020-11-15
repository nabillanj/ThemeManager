//
//  UIViewController+Extensions.swift
//  ThemeManager
//
//  Created by nabilla on 15/11/20.
//  Copyright © 2020 nabilla. All rights reserved.
//

import UIKit

extension UIViewController {
    func addShowMessage(message: String) {
        let alertController = UIAlertController(title: "Warning", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
}
