//
//  Appearance.swift
//  FoodPinApp
//
//  Created by zombietux on 06/03/2019.
//  Copyright © 2019 zombietux. All rights reserved.
//

import UIKit

struct Appearance {
    static func setGlobalAppearance() {
        UINavigationBar.appearance().backgroundColor = UIColor(red: 255.0 / 255.0, green: 205.0 / 255.0, blue: 0.0, alpha: 1.0)
        
        
        UITabBar.appearance().barTintColor = UIColor(red: 255.0 / 255.0, green: 205.0 / 255.0, blue: 0.0, alpha: 1.0)
        
        UINavigationBar.appearance().tintColor = UIColor(red: 231.0/255.0, green: 76.0/255.0, blue: 60.0/255.0, alpha: 1.0)
    
    }
}

