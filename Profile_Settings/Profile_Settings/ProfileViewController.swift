//
//  ProfileViewController.swift
//  Profile_Settings
//
//  Created by Michal Pietrzak on 24/12/2020.
//

import UIKit

class ProfileViewController: UIViewController {

    // MARK: - @IBOutlet
    @IBOutlet var profileView: UIView!
    
    @IBOutlet var nameCountryView: UIView!
    
    @IBOutlet var userImageView: UIView!
    @IBOutlet var userImage: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var countryLabel: UILabel!
    
    @IBOutlet var statusView: UIView!
    
    @IBOutlet var postsView: UIView!
    @IBOutlet var postData: UILabel!
    @IBOutlet var postLabel: UILabel!

    @IBOutlet var followingView: UIView!
    @IBOutlet var followingData: UILabel!
    @IBOutlet var followingLabel: UILabel!
    
    @IBOutlet var followersView: UIView!
    @IBOutlet var followersData: UILabel!
    @IBOutlet var followersLabel: UILabel!
    
    @IBOutlet var recentPostsView: UIView!
    @IBOutlet var recentFollowersView: UIView!
    
    @IBOutlet var recentPostsLabel: UILabel!
    @IBOutlet var seeAllPostsLabel: UILabel!
    @IBOutlet var recentFollowersLabel: UILabel!
    @IBOutlet var seeAllRecentFollowersLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Profile"
        
        // MARK: - Color Palette
        let darkColor = UIColor(red: 0.04, green: 0.04, blue: 0.04, alpha: 1.00)
        let whiteColor = UIColor(red: 0.78, green: 0.78, blue: 0.78, alpha: 1.00)
        let grayColor = UIColor(red: 0.21, green: 0.21, blue: 0.21, alpha: 1.00)
        let greenColor = UIColor(red: 0.34, green: 0.58, blue: 0.46, alpha: 1.00)
        
        view.backgroundColor = darkColor
        
        // MARK: - Profile View Data
        profileView.backgroundColor = grayColor
        profileView.layer.cornerRadius = 50
        nameCountryView.backgroundColor = grayColor
        
        userImageView.layer.cornerRadius = 25
        userImageView.layer.shadowColor = darkColor.cgColor
        userImageView.layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
        userImageView.layer.shadowRadius = 25
        userImageView.layer.shadowOpacity = 0.9
        userImageView.layer.shouldRasterize = true
        userImageView.layer.rasterizationScale = UIScreen.main.scale
        
        userImage.layer.cornerRadius = 25
        userImage.clipsToBounds = true
  
        nameLabel.text = "Lori Schneider"
        nameLabel.font = UIFont(name: "Futura-Bold", size: 22)
        nameLabel.textAlignment = .center
        nameLabel.textColor = whiteColor
        
        countryLabel.text = "London, UK"
        countryLabel.font = UIFont(name: "Futura-Medium", size: 16)
        countryLabel.textAlignment = .center
        countryLabel.textColor = whiteColor
        
        statusView.backgroundColor = grayColor
        postsView.backgroundColor = grayColor
        followingView.backgroundColor = grayColor
        followersView.backgroundColor = grayColor
        
        postData.font = UIFont(name: "Futura-Medium", size: 16)
        postData.textColor = greenColor
        postData.text = "203"
        
        postLabel.font = UIFont(name: "Futura-Medium", size: 14)
        postLabel.textColor = whiteColor
        postLabel.text = "Posts"
            
        followingData.font = UIFont(name: "Futura-Medium", size: 16)
        followingData.textColor = greenColor
        followingData.text = "125"
            
        followingLabel.font = UIFont(name: "Futura-Medium", size: 14)
        followingLabel.textColor = whiteColor
        followingLabel.text = "Following"
            
        followersData.font = UIFont(name: "Futura-Medium", size: 16)
        followersData.textColor = greenColor
        followersData.text = "3501"
                
        followersLabel.font = UIFont(name: "Futura-Medium", size: 14)
        followersLabel.textColor = whiteColor
        followersLabel.text = "Followers"
        
        recentPostsView.backgroundColor = grayColor
        recentFollowersView.backgroundColor = grayColor
        
        recentPostsLabel.text = "Recent Posts"
        recentPostsLabel.font = UIFont(name: "Futura-Medium", size: 16)
        recentPostsLabel.textAlignment = .left
        recentPostsLabel.textColor = whiteColor
        
        seeAllPostsLabel.font = UIFont(name: "Futura-Medium", size: 16)
        seeAllPostsLabel.textColor = greenColor
        seeAllPostsLabel.text = "See All"
        
        recentFollowersLabel.text = "Recent Followers"
        recentFollowersLabel.font = UIFont(name: "Futura-Medium", size: 16)
        recentFollowersLabel.textAlignment = .left
        recentFollowersLabel.textColor = whiteColor
        
        seeAllRecentFollowersLabel.font = UIFont(name: "Futura-Medium", size: 16)
        seeAllRecentFollowersLabel.textColor = greenColor
        seeAllRecentFollowersLabel.text = "See All"
        
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
        navigationItem.rightBarButtonItem?.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Futura-Bold", size: 20)!, NSAttributedString.Key.foregroundColor: whiteColor], for: .normal)
        navigationItem.rightBarButtonItem?.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Futura-Bold", size: 20)!, NSAttributedString.Key.foregroundColor: whiteColor], for: .highlighted)
        
        let backButtonImage = UIImage(systemName: "chevron.backward", withConfiguration: imageConfiguration)
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem?.tintColor = whiteColor
        
        self.navigationController?.navigationBar.backIndicatorImage = backButtonImage
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = backButtonImage
    }
    
    // MARK: - UIBarButtonTap
    @objc func editTapped(sender: UIButton!) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let settingsVC = storyboard.instantiateViewController(withIdentifier: "settingsViewController") as! SettingsViewController
        navigationController?.pushViewController(settingsVC, animated: true)
        print("Button tapped")
        
    }
}
