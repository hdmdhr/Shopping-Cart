//
//  SaveLoadProductManager.swift
//  Shopping Cart
//
//  Created by 胡洞明 on 2021-10-24.
//  Copyright © 2021 Vog App Developers. All rights reserved.
//

import Foundation

class SaveLoadProductManager: CanSaveLoadProduct {
    
    func saveNumberForProduct(_ product: String, number: Int) {
        UserDefaults.standard.setValue(number, forKey: product)
    }
    
    func loadNumberForProduct(_ product: String) -> Int {
        UserDefaults.standard.value(forKey: product) as? Int ?? 0
    }
    
}
