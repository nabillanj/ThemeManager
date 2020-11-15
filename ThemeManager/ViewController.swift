//
//  ViewController.swift
//  ThemeManager
//
//  Created by nabilla on 14/11/20.
//  Copyright © 2020 nabilla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnSubmit: UIButton! // will using base button
    @IBOutlet weak var viewIcon: UIView! // will using base view
    @IBOutlet weak var lblThisIsIcon: UILabel! // will using base label
    @IBOutlet weak var btnCancel: UIButton!
    @IBOutlet weak var btnRevertChanges: UIButton!
    @IBOutlet weak var viewThatWillChanged: UIView!
    @IBOutlet weak var lblThatWillChanged: UILabel!
    @IBOutlet weak var imgCartOrange: UIImageView!
    @IBOutlet weak var imgShareBlack: UIImageView!


    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Theme Manager"
        addCartIconToNavigationBar()
        setupUI()
    }

    func setupUI() {
        
    }

    // MARK: - Actions

    // Change Dark or Light Mode
    @IBAction func onClickToDarkMode(_ sender: UIButton) {
        imgCartOrange.setColorImage(color: .blue)
        imgShareBlack.setColorImage(color: .blue)
    }

    @IBAction func onClickToLightMode(_ sender: UIButton) {
        imgCartOrange.setColorImage(color: .white)
        imgShareBlack.setColorImage(color: .white)
    }

    // Change To selected list of theme color
    @IBAction func onClickToRedTheme(_ sender: UIButton) {
        UserPreferences.setUserTheme(theme: .red)
    }

    @IBAction func onCLickToBlueTheme(_ sender: UIButton) {
        UserPreferences.setUserTheme(theme: .blue)
    }

    @IBAction func onClickOrangeTheme(_ sender: UIButton) {
        UserPreferences.setUserTheme(theme: .orange)
    }

    @IBAction func onClickBlackTheme(_ sender: UIButton) {
        UserPreferences.setUserTheme(theme: .black)
    }

    @IBAction func onClickCustomTheme(_ sender: UIButton) {
        addShowMessage(message: "[Todo] Will create function so user can dynamically change color based on his/her favorite color:)")
    }

    // Other Actions
    @IBAction func onClickSubmitToChangeTheme(_ sender: UIButton) {
        addShowMessage(message: "User will update theme in here")
    }

    @IBAction func onClickCancel(_ sender: UIButton) {
        addShowMessage(message: "User click cancel")
    }

    @IBAction func onClickToNextPage(_ sender: UIButton) {
        addShowMessage(message: "[On Progress] Will check in another page, currently on progress dev")
    }
}

private extension ViewController {
    func addCartIconToNavigationBar() {
        let cartIconButton = UIButton(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        cartIconButton.setImage(UIImage(named: "ic_share"), for: .normal)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: cartIconButton)
    }
}
