//
//  Storyboarded.swift
//  Shopping Cart
//
//  Created by 胡洞明 on 2021-10-22.
//  Copyright © 2021 Vog App Developers. All rights reserved.
//

import UIKit

protocol Storyboarded: UIViewController {
    
    static func instantiate(fromStoryboard storyboard: String) -> Self
    
}



extension Storyboarded {
    
    static func instantiate(fromStoryboard storyboard: String = "Main") -> Self {
        let storyboard = UIStoryboard(name: storyboard, bundle: .main)
        
        return storyboard.instantiateViewController(identifier: String(describing: Self.self))
    }
    
}


extension UIViewController: Storyboarded { }
