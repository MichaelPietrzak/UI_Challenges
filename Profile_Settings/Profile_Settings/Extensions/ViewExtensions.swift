//
//  ImageExtensions.swift
//  Profile_Settings
//
//  Created by Michal Pietrzak on 06/01/2021.
//

import UIKit

extension UIImage {
    class func iconConfig(imageName: String, pointSize: CGFloat, weight: UIImage.SymbolWeight) -> UIImage {
            let image = UIImage(systemName: imageName, withConfiguration: UIImage.SymbolConfiguration(pointSize: pointSize, weight: weight))
            return image!
        }
}


