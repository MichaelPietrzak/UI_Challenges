//
//  SettingsViewController.swift
//  Profile_Settings
//
//  Created by Michal Pietrzak on 24/12/2020.
//

import UIKit

struct Settings {
    let iconImage: UIImage
    let iconLabel: String
}

class SettingsViewController: UITableViewController {
    
    override class func description() -> String {
        return "SettingsViewController"
    }
    
    // MARK: - Data source from Array
    var sections = ["", "Notifications", "App Permissions"]
    var mainSettings = ["Language", "Application Theme"]
    var notifications = ["Push Notifications", "Email Notifications"]
    var appPermissions = ["Camera", "Location"]
    
//    struct Cells {
//        static let settingsCell = "SettingsTableViewCell"
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Settings"
        view.backgroundColor = Colors.darkColor
        
        tableView.separatorStyle = .none
        // MARK: - Registering Table Cell xib
        tableView.register(UINib(nibName: SettingsTableViewCell.description(), bundle: nil), forCellReuseIdentifier: SettingsTableViewCell.description())
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        if section == 0 {
//            return mainSettings.count
//        }
//        if section == 1 {
//            return notifications.count
//        }
//        if section == 2 {
//            return appPermissions.count
//        }
        return 1
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "\(sections[section])"
//    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.frame = CGRect(x: 20, y: 8, width: 320, height: 20)
        //headerView.backgroundColor = UIColor.red
        return headerView
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: SettingsTableViewCell.description(), for: indexPath) as! SettingsTableViewCell

        let section = indexPath.section
        
        let data: String
        
        switch section {
        case 0:
            data = mainSettings[indexPath.row]
        case 1:
            data = notifications[indexPath.row]
        case 2:
            data = appPermissions[indexPath.row]
        default:
            data = "Empty"
        }
        
        // MARK: - Cell Data
        cell.backgroundColor = Colors.darkColor
        cell.iconLabel.text = data
        return cell
    }
}
