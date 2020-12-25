//
//  ProfileViewController.swift
//  Profile_Settings
//
//  Created by Michal Pietrzak on 24/12/2020.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Profile"
        
        // MARK: - Color Palette
        let darkColor = UIColor(red: 0.04, green: 0.04, blue: 0.04, alpha: 1.00)
        let whiteColor = UIColor(red: 0.78, green: 0.78, blue: 0.78, alpha: 1.00)
        let grayColor = UIColor(red: 0.21, green: 0.21, blue: 0.21, alpha: 1.00)
        let greenColor = UIColor(red: 0.34, green: 0.58, blue: 0.46, alpha: 1.00)
        
        view.backgroundColor = darkColor
        
        // MARK: - Navigation Bar
        self.navigationController?.navigationBar.tintColor = whiteColor
        self.navigationController?.navigationBar.barTintColor = darkColor
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: whiteColor, NSAttributedString.Key.font: UIFont(name: "Futura-Bold", size: 20)!]
        
        let imageConfiguration = UIImage.SymbolConfiguration(pointSize: 20, weight: .black)
        let menuButtonImage = UIImage(systemName: "text.alignleft", withConfiguration: imageConfiguration)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: menuButtonImage, style: .plain, target: nil, action: nil)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(editTapped))
        //navigationItem.rightBarButtonItem?.tintColor = whiteColor
        navigationItem.rightBarButtonItem?.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Futura-Bold", size: 20)!, NSAttributedString.Key.foregroundColor: whiteColor], for: .normal)
        navigationItem.rightBarButtonItem?.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Futura-Bold", size: 20)!, NSAttributedString.Key.foregroundColor: whiteColor], for: .highlighted)
        navigationItem.rightBarButtonItem?.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Futura-Bold", size: 20)!, NSAttributedString.Key.foregroundColor: whiteColor], for: .selected)
        
        let backButtonImage = UIImage(systemName: "chevron.backward", withConfiguration: imageConfiguration)
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem?.tintColor = whiteColor
        
        self.navigationController?.navigationBar.backIndicatorImage = backButtonImage
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = backButtonImage
    }
    
    @objc func editTapped(sender: UIButton!) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let settingsVC = storyboard.instantiateViewController(withIdentifier: "settingsViewController") as! SettingsViewController
        navigationController?.pushViewController(settingsVC, animated: true)
        print("Button tapped")
        
    }
}
