//
//  SettingsTableViewCell.swift
//  Profile_Settings
//
//  Created by Michal Pietrzak on 26/12/2020.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {
    
    /// make sure you're setting class for the view instead of File's Owner
    @IBOutlet var view: UIView!
    @IBOutlet var iconImage: UIImageView!
    @IBOutlet var iconLabel: UILabel!
    @IBOutlet var actionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // MARK: - Color Palette
        let lightGrayColor = UIColor(red: 0.61, green: 0.64, blue: 0.64, alpha: 1.00)
        let grayColor = UIColor(red: 0.21, green: 0.21, blue: 0.21, alpha: 1.00)
        let greenColor = UIColor(red: 0.34, green: 0.58, blue: 0.46, alpha: 1.00)
     
        view.backgroundColor = grayColor
        view.layer.cornerRadius = 20
        
        iconImage.image = UIImage.iconConfig(imageName: Images.globe, pointSize: 24, weight: .light)
        iconImage.tintColor = lightGrayColor
        
        iconLabel.textAlignment = .left
        iconLabel.textColor = lightGrayColor
        iconLabel.font = UIFont(name: "Futura-Medium", size: 16)
        
        // TODO: - change actionLabel to actionButton(in xib also)
        actionLabel.text = "English"
        actionLabel.textAlignment = .right
        actionLabel.textColor = greenColor
        actionLabel.font = UIFont(name: "Futura-Medium", size: 14)
    }
}

extension UIImage {
    class func iconConfig(imageName: String, pointSize: CGFloat, weight: UIImage.SymbolWeight) -> UIImage {
            let image = UIImage(systemName: imageName, withConfiguration: UIImage.SymbolConfiguration(pointSize: pointSize, weight: weight))
            return image!
        }
}
