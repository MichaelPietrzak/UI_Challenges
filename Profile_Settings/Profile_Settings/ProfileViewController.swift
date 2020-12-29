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
    
    @IBOutlet var postsCollectionView: UIView!
    @IBOutlet var followersCollectionView: UIView!
    
    @IBOutlet var recentPostsLabel: UILabel!
    @IBOutlet var seeAllPostsButton: UIButton!
    @IBOutlet var recentFollowersLabel: UILabel!
    @IBOutlet var seeAllRecentFollowersButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Profile"
        
        // MARK: - Color Palette
        let darkColor = UIColor(red: 0.04, green: 0.04, blue: 0.04, alpha: 1.00)
        let lightGrayColor = UIColor(red: 0.61, green: 0.64, blue: 0.64, alpha: 1.00)
        let grayColor = UIColor(red: 0.21, green: 0.21, blue: 0.21, alpha: 1.00)
        let greenColor = UIColor(red: 0.34, green: 0.58, blue: 0.46, alpha: 1.00)
        
        let placeholderColor = UIColor(red: 0.92, green: 0.92, blue: 0.92, alpha: 1.00)
        
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
        
        userImage.image = UIImage(named: "userAvatar")
        userImage.layer.cornerRadius = 25
        userImage.clipsToBounds = true
  
        nameLabel.text = "Lori Schneider"
        nameLabel.textAlignment = .center
        nameLabel.textColor = lightGrayColor
        nameLabel.font = UIFont(name: "Futura-Bold", size: 22)
        
        countryLabel.text = "London, UK"
        countryLabel.textAlignment = .center
        countryLabel.textColor = lightGrayColor
        countryLabel.font = UIFont(name: "Futura-Medium", size: 16)
        
        statusView.backgroundColor = grayColor
        postsView.backgroundColor = grayColor
        followingView.backgroundColor = grayColor
        followersView.backgroundColor = grayColor
        
        postData.text = "203"
        postData.textColor = greenColor
        postData.font = UIFont(name: "Futura-Medium", size: 16)
        
        postLabel.text = "Posts"
        postLabel.textColor = lightGrayColor
        postLabel.font = UIFont(name: "Futura-Medium", size: 14)
            
        followingData.text = "125"
        followingData.textColor = greenColor
        followingData.font = UIFont(name: "Futura-Medium", size: 16)
            
        followingLabel.text = "Following"
        followingLabel.textColor = lightGrayColor
        followingLabel.font = UIFont(name: "Futura-Medium", size: 14)
            
        followersData.text = "3501"
        followersData.textColor = greenColor
        followersData.font = UIFont(name: "Futura-Medium", size: 16)
                
        followersLabel.text = "Followers"
        followersLabel.textColor = lightGrayColor
        followersLabel.font = UIFont(name: "Futura-Medium", size: 14)
        
        recentPostsView.backgroundColor = grayColor
        recentFollowersView.backgroundColor = grayColor
        
        postsCollectionView.backgroundColor = placeholderColor
        postsCollectionView.layer.cornerRadius = 10
        
        followersCollectionView.backgroundColor = placeholderColor
        followersCollectionView.layer.cornerRadius = 10
    
        recentPostsLabel.text = "Recent Posts"
        recentPostsLabel.textAlignment = .left
        recentPostsLabel.textColor = lightGrayColor
        recentPostsLabel.font = UIFont(name: "Futura-Medium", size: 16)
        
        seeAllPostsButton.setTitle("See All", for: .normal)
        seeAllPostsButton.contentHorizontalAlignment = .right
        seeAllPostsButton.setTitleColor(greenColor, for: .normal)
        seeAllPostsButton.titleLabel?.font = UIFont(name: "Futura-Medium", size: 14)
        
        recentFollowersLabel.text = "Recent Followers"
        recentFollowersLabel.textAlignment = .left
        recentFollowersLabel.textColor = lightGrayColor
        recentFollowersLabel.font = UIFont(name: "Futura-Medium", size: 16)
        
        seeAllRecentFollowersButton.setTitle("See All", for: .normal)
        seeAllRecentFollowersButton.contentHorizontalAlignment = .right
        seeAllRecentFollowersButton.setTitleColor(greenColor, for: .normal)
        seeAllRecentFollowersButton.titleLabel?.font = UIFont(name: "Futura-Medium", size: 14)
        
        // MARK: - Navigation Bar
        self.navigationController?.navigationBar.tintColor = lightGrayColor
        self.navigationController?.navigationBar.barTintColor = darkColor
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: lightGrayColor, NSAttributedString.Key.font: UIFont(name: "Futura-Bold", size: 20)!]
        
        let imageConfiguration = UIImage.SymbolConfiguration(pointSize: 20, weight: .black)
        let menuButtonImage = UIImage(systemName: "text.alignleft", withConfiguration: imageConfiguration)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: menuButtonImage, style: .plain, target: nil, action: nil)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(editTapped))
        navigationItem.rightBarButtonItem?.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Futura-Bold", size: 20)!, NSAttributedString.Key.foregroundColor: lightGrayColor], for: .normal)
        navigationItem.rightBarButtonItem?.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Futura-Bold", size: 20)!, NSAttributedString.Key.foregroundColor: lightGrayColor], for: .highlighted)
        
        let backButtonImage = UIImage(systemName: "chevron.backward", withConfiguration: imageConfiguration)
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem?.tintColor = lightGrayColor
        
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
