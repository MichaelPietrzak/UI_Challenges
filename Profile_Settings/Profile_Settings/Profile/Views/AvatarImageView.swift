//
//  AvatarImageView.swift
//  Profile_Settings
//
//  Created by Michal Pietrzak on 08/01/2021.
//

import UIKit

class AvatarImageView: UIImageView {
    
    init() {
        super.init(frame: .zero)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Configure View
    private func configure() {
//        userImageView.layer.cornerRadius = 25
//        userImageView.layer.shadowColor = Colors.darkColor.cgColor
//        userImageView.layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
//        userImageView.layer.shadowRadius = 25
//        userImageView.layer.shadowOpacity = 0.9
//        userImageView.layer.shouldRasterize = true
//        userImageView.layer.rasterizationScale = UIScreen.main.scale
    }
    
    // MARK: - Setup of Views
    private func layoutUI() {
        // TODO: - Create, add and layout the children views... (Constraints)
    }
}
