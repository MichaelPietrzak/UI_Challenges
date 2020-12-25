//
//  SettingsViewController.swift
//  Profile_Settings
//
//  Created by Michal Pietrzak on 24/12/2020.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Settings"
        
        // MARK: - Color Palette
        let darkColor = UIColor(red: 0.04, green: 0.04, blue: 0.04, alpha: 1.00)
        let whiteColor = UIColor(red: 0.78, green: 0.78, blue: 0.78, alpha: 1.00)
        let grayColor = UIColor(red: 0.21, green: 0.21, blue: 0.21, alpha: 1.00)
        let greenColor = UIColor(red: 0.34, green: 0.58, blue: 0.46, alpha: 1.00)

        view.backgroundColor = darkColor
    }
}
