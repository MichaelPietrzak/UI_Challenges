//
//  SettingsViewController.swift
//  Profile_Settings
//
//  Created by Michal Pietrzak on 24/12/2020.
//

import UIKit

class SettingsViewController: UITableViewController {

    // MARK: - Data source from Array
    var sections = ["", "Notifications", "App Permissions"]
    var mainSettings = ["Language", "Application Theme"]
    var notifications = ["Push Notifications", "Email Notifications"]
    var appPermissions = ["Camera", "Location"]
    
    // MARK: - Color Palette
    let darkColor = UIColor(red: 0.04, green: 0.04, blue: 0.04, alpha: 1.00)
    let lightGrayColor = UIColor(red: 0.61, green: 0.64, blue: 0.64, alpha: 1.00)
    let grayColor = UIColor(red: 0.21, green: 0.21, blue: 0.21, alpha: 1.00)
    let greenColor = UIColor(red: 0.34, green: 0.58, blue: 0.46, alpha: 1.00)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Settings"

        view.backgroundColor = darkColor
        
        // MARK: - Registering Table Cell xib
        tableView.register(UINib(nibName: "SettingsTableViewCell", bundle: nil), forCellReuseIdentifier: "SettingsTableViewCell")
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return mainSettings.count
        }
        if section == 1 {
            return notifications.count
        }
        if section == 2 {
            return appPermissions.count
        }
        return 0
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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsTableViewCell", for: indexPath) as! SettingsTableViewCell

        let section = indexPath.section
        
        var data: String
        
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
//        cell.textLabel?.text = data
//        cell.textLabel?.textColor = lightGrayColor
//        cell.textLabel?.font = UIFont(name: "Futura-Medium", size: 16)
//        cell.backgroundColor = darkColor
        
        return cell
    }
}
