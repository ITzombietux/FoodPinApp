//
//  RestaurantTableViewCell.swift
//  FoodPinApp
//
//  Created by zombietux on 25/02/2019.
//  Copyright © 2019 zombietux. All rights reserved.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var thumbnailImageView: UIImageView!
    
    @IBOutlet var heartImageView: UIImageView!

    var name: String? {
        didSet {
            nameLabel.text = name
        }
    }
    
    var location: String? {
        didSet {
            locationLabel.text = location
        }
    }
    var type: String? {
        didSet {
            typeLabel.text = type
        }
    }
    var thumnailImage: UIImage? {
        didSet {
            thumbnailImageView.image = thumnailImage
        }
    }
    
    var heartImage: UIImage? {
        didSet {
            heartImageView.image = heartImage
        }
    }
    
    var nameColor: UIColor? {
        didSet {
            nameLabel.textColor = nameColor
        }
    }
}
