//
//  ImageExtensions.swift
//  Profile_Settings
//
//  Created by Michal Pietrzak on 06/01/2021.
//

import UIKit

extension UIImage {
    /// configuring SF Symbol: name, pointSize and weight
    class func iconConfig(_ imageName: String, _ pointSize: CGFloat, _ weight: UIImage.SymbolWeight) -> UIImage {
        return UIImage(systemName: imageName, withConfiguration: UIImage.SymbolConfiguration(pointSize: pointSize, weight: weight))!
    }
}

extension UIFont {
    /// cofiguring custom UIFont: name, size
    class func fontConfig(_ name: String, _ size: CGFloat) -> UIFont {
        return UIFont(name: name, size: size)!
    }
}

