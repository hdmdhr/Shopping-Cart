//
//  CanSaveLoadProduct.swift
//  Shopping Cart
//
//  Created by 胡洞明 on 2021-10-24.
//  Copyright © 2021 Vog App Developers. All rights reserved.
//

import Foundation

protocol CanSaveLoadProduct {
    
    func saveNumberForProduct(_ product: String, number: Int)
    /// Load number for the given product name
    /// - parameters:
    ///   - product: name of the product
    /// - returns: the number of the given product, if has none, return 0
    func loadNumberForProduct(_ product: String) -> Int
    
}
