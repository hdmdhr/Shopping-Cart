//
//  CountViewController.swift
//  Shopping Cart
//
//  Created by 胡洞明 on 2021-10-22.
//  Copyright © 2021 Vog App Developers. All rights reserved.
//

import UIKit

class CountViewController: UIViewController {

    // MARK: - @IBOutlets
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    
    // MARK: - Lifecycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countLabel.text = "\(stepper.value)"
    }

    
    // MARK: - @IBActions
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        countLabel.text = "\(stepper.value)"
    }
    

}

