//
//  SettingsTableViewCell.swift
//  Profile_Settings
//
//  Created by Michal Pietrzak on 26/12/2020.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {
    
    override class func description() -> String {
        return "SettingsTableViewCell"
    }
    
    /// make sure you're setting class for the view instead of File's Owner
    @IBOutlet var view: UIView!
    @IBOutlet var iconImage: UIImageView!
    @IBOutlet var iconLabel: UILabel!
    @IBOutlet var actionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
     
        view.backgroundColor = Colors.grayColor
        view.layer.cornerRadius = 20
        
        iconImage.image = UIImage.iconConfig(Icons.globe, 24, .light)
        iconImage.tintColor = Colors.lightGrayColor
        
        iconLabel.textAlignment = .left
        iconLabel.textColor = Colors.lightGrayColor
        iconLabel.font = UIFont.fontConfig(Fonts.FuturaMedium, 16)
        
        // TODO: - change actionLabel to actionButton(in xib also)
        actionLabel.text = "English"
        actionLabel.textAlignment = .right
        actionLabel.textColor = Colors.greenColor
        actionLabel.font = UIFont.fontConfig(Fonts.FuturaMedium, 14)
    }
}
