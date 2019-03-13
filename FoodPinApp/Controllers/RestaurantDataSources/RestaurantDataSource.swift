//
//  RestaurantDataSource.swift
//  FoodPinApp
//
//  Created by zombietux on 13/03/2019.
//  Copyright © 2019 zombietux. All rights reserved.
//

import UIKit

class RestaurantDataSource: NSObject {
    
    private let restaurants: [RestaurantMO]
    
    init(restaurnat: [RestaurantMO]) {
        self.restaurants = restaurnat
    }
    
    func restaurant(at indexPath: IndexPath) -> RestaurantMO {
        return restaurants[indexPath.row]
    }
}

extension RestaurantDataSource: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "datacell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! RestaurantTableViewCell
        
        // Configure the cell...
        cell.nameLabel.text = restaurants[indexPath.row].name
        if let restaurantImage = restaurants[indexPath.row].image {
            cell.thumbnailImageView.image = UIImage(data: restaurantImage as Data)
        }
        cell.locationLabel.text = restaurants[indexPath.row].location
        cell.typeLabel.text = restaurants[indexPath.row].type
        cell.heartImageView.isHidden = restaurants[indexPath.row].isVisited ? false : true
        
        return cell
    }
    
}

