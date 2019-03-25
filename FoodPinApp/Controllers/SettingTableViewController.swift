//
//  SettingTableViewController.swift
//  FoodPinApp
//
//  Created by zombietux on 25/03/2019.
//  Copyright © 2019 zombietux. All rights reserved.
//

import UIKit

class SettingTableViewController: UITableViewController {
    
    @IBOutlet var cells: [UITableViewCell]!
    
    var settingsController: SettingsController?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configure navigation bar appearance
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        if let customFont = UIFont(name: "Rubik-Medium", size: 40.0) {
            navigationController?.navigationBar.largeTitleTextAttributes = [ NSAttributedString.Key.foregroundColor: UIColor(red: 231, green: 76, blue: 60), NSAttributedString.Key.font: customFont ]
        }
        
        select(cell: selectedSchemeCell)
        applyStyle()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cellIndex = indexPath.row
        settingsController?.scheme = cellIndex == 0 ? .defaultScheme : .webScheme
        let cell = cells[cellIndex]
        select(cell: cell)
        applyStyle()
    }
}


private extension SettingTableViewController {
    var selectedSchemeCell: UITableViewCell {
        switch settingsController?.scheme {
        case ColorScheme.webScheme: return cells[1]
        default: return cells[0]
        }
    }
    
    func select(cell: UITableViewCell) {
        for staticCell in cells {
            staticCell.accessoryType = staticCell === cell ? .checkmark : .none
        }
    }
    
    func applyStyle() {
        guard let scheme = settingsController?.scheme else {
            return
        }
        for cell in cells {
            cell.textLabel?.textColor = scheme.titleColor
            cell.tintColor = scheme.buttonColor
        }
    }
}

