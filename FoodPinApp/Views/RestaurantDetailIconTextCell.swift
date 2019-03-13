//
//  RestaurantDetailIconTextCell.swift
//  FoodPinApp
//
//  Created by zombietux on 27/02/2019.
//  Copyright © 2019 zombietux. All rights reserved.
//

import UIKit

class RestaurantDetailIconTextCell: UITableViewCell {
    
    @IBOutlet var iconImageView: UIImageView!
    @IBOutlet var shortTextLabel: UILabel! {
        didSet {
            shortTextLabel.numberOfLines = 0
        }
    }
}
