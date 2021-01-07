//
//  ProfileViewController.swift
//  Profile_Settings
//
//  Created by Michal Pietrzak on 24/12/2020.
//

import UIKit

class ProfileViewController: UIViewController {

    override class func description() -> String {
        return "ProfileViewController"
    }
    
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
        view.backgroundColor = Colors.darkColor
        
        // MARK: - Profile View Data
        profileView.backgroundColor = Colors.grayColor
        profileView.layer.cornerRadius = 50
        nameCountryView.backgroundColor = Colors.grayColor
        
        userImageView.layer.cornerRadius = 25
        userImageView.layer.shadowColor = Colors.darkColor.cgColor
        userImageView.layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
        userImageView.layer.shadowRadius = 25
        userImageView.layer.shadowOpacity = 0.9
        userImageView.layer.shouldRasterize = true
        userImageView.layer.rasterizationScale = UIScreen.main.scale
        
        userImage.image = Images.userAvatar
        userImage.layer.cornerRadius = 25
        userImage.clipsToBounds = true
  
        nameLabel.text = "Lori Schneider"
        nameLabel.textAlignment = .center
        nameLabel.textColor = Colors.lightGrayColor
        nameLabel.font = UIFont.fontConfig(Fonts.FuturaBold, 22)

        countryLabel.text = "London, UK"
        countryLabel.textAlignment = .center
        countryLabel.textColor = Colors.lightGrayColor
        countryLabel.font = UIFont.fontConfig(Fonts.FuturaMedium, 16)
        
        statusView.backgroundColor = Colors.grayColor
        postsView.backgroundColor = Colors.grayColor
        followingView.backgroundColor = Colors.grayColor
        followersView.backgroundColor = Colors.grayColor
        
        postData.text = "203"
        postData.textColor = Colors.greenColor
        postData.font = UIFont.fontConfig(Fonts.FuturaMedium, 16)     
        
        postLabel.text = "Posts"
        postLabel.textColor = Colors.lightGrayColor
        postLabel.font = UIFont.fontConfig(Fonts.FuturaMedium, 14)
            
        followingData.text = "125"
        followingData.textColor = Colors.greenColor
        followingData.font = UIFont.fontConfig(Fonts.FuturaMedium, 16)
            
        followingLabel.text = "Following"
        followingLabel.textColor = Colors.lightGrayColor
        followingLabel.font = UIFont.fontConfig(Fonts.FuturaMedium, 14)
            
        followersData.text = "3501"
        followersData.textColor = Colors.greenColor
        followersData.font = UIFont.fontConfig(Fonts.FuturaMedium, 16)
                
        followersLabel.text = "Followers"
        followersLabel.textColor = Colors.lightGrayColor
        followersLabel.font = UIFont.fontConfig(Fonts.FuturaMedium, 14)
        
        recentPostsView.backgroundColor = Colors.grayColor
        recentFollowersView.backgroundColor = Colors.grayColor
        
        postsCollectionView.backgroundColor = Colors.placeholderColor
        postsCollectionView.layer.cornerRadius = 10
        
        followersCollectionView.backgroundColor = Colors.placeholderColor
        followersCollectionView.layer.cornerRadius = 10
    
        recentPostsLabel.text = "Recent Posts"
        recentPostsLabel.textAlignment = .left
        recentPostsLabel.textColor = Colors.lightGrayColor
        recentPostsLabel.font = UIFont.fontConfig(Fonts.FuturaMedium, 16)
        
        seeAllPostsButton.setTitle("See All", for: .normal)
        seeAllPostsButton.contentHorizontalAlignment = .right
        seeAllPostsButton.setTitleColor(Colors.greenColor, for: .normal)
        seeAllPostsButton.titleLabel?.font = UIFont.fontConfig(Fonts.FuturaMedium, 14)
        
        recentFollowersLabel.text = "Recent Followers"
        recentFollowersLabel.textAlignment = .left
        recentFollowersLabel.textColor = Colors.lightGrayColor
        recentFollowersLabel.font = UIFont.fontConfig(Fonts.FuturaMedium, 16)
        
        seeAllRecentFollowersButton.setTitle("See All", for: .normal)
        seeAllRecentFollowersButton.contentHorizontalAlignment = .right
        seeAllRecentFollowersButton.setTitleColor(Colors.greenColor, for: .normal)
        seeAllRecentFollowersButton.titleLabel?.font = UIFont.fontConfig(Fonts.FuturaMedium, 14)
        
        // MARK: - Navigation Bar
        self.navigationController?.navigationBar.tintColor = Colors.lightGrayColor
        self.navigationController?.navigationBar.barTintColor = Colors.darkColor
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: Colors.lightGrayColor, NSAttributedString.Key.font: UIFont.fontConfig(Fonts.FuturaBold, 20)]
    
        let menuButtonImage = UIImage.iconConfig(Icons.hamburgerMenu, 20, .black)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: menuButtonImage, style: .plain, target: nil, action: nil)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(editTapped))
        navigationItem.rightBarButtonItem?.setTitleTextAttributes([NSAttributedString.Key.font: UIFont.fontConfig(Fonts.FuturaBold, 20), NSAttributedString.Key.foregroundColor: Colors.lightGrayColor], for: .normal)
        navigationItem.rightBarButtonItem?.setTitleTextAttributes([NSAttributedString.Key.font: UIFont.fontConfig(Fonts.FuturaBold, 20), NSAttributedString.Key.foregroundColor: Colors.lightGrayColor], for: .highlighted)
        
        let backButtonImage = UIImage.iconConfig(Icons.back, 20, .black)
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem?.tintColor = Colors.lightGrayColor
        
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
