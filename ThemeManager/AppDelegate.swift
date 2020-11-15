//
//  AppDelegate.swift
//  ThemeManager
//
//  Created by nabilla on 14/11/20.
//  Copyright © 2020 nabilla. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ViewController")
        let rootVc = UINavigationController(rootViewController: vc)
        window?.rootViewController = rootVc
        window?.makeKeyAndVisible()
        return true
    }
}

