//
//  UINavigationController+Ext.swift
//  FoodPinApp
//
//  Created by zombietux on 27/02/2019.
//  Copyright © 2019 zombietux. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationController {
    
    open override var childForStatusBarStyle: UIViewController? {
        return topViewController
    }
}
