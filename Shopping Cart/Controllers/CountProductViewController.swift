//
//  CountProductViewController.swift
//  Shopping Cart
//
//  Created by 胡洞明 on 2021-10-24.
//  Copyright © 2021 Vog App Developers. All rights reserved.
//

import UIKit

class CountProductViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet private weak var productImageView: UIImageView!
    @IBOutlet private weak var productCountLabel: UILabel!
    @IBOutlet private weak var stepper: UIStepper!
    
    
    // MARK: - Vars
    
    private(set) var productName: String!
    private(set) var increment: Int!
    private(set) var maxPurchaseNumber: Int!
    private(set) var saveLoadProductManager: CanSaveLoadProduct!
    
    private var productNumber: Int { stepper.value.toRoundedInt }
    
    func configure(productName: String,
                   increment: Int,
                   maxPurchaseNumber: Int,
                   saveLoadProductManager: CanSaveLoadProduct)
    {
        self.productName = productName
        self.increment = increment
        self.maxPurchaseNumber = maxPurchaseNumber
        self.saveLoadProductManager = saveLoadProductManager
        
        tabBarItem.title = productName
    }
    
    
    // MARK: - Lifecycles
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        productImageView.image = UIImage(named: productName)
        
        stepper.maximumValue = Double(maxPurchaseNumber)
        stepper.stepValue = Double(increment)
        stepper.value = Double(saveLoadProductManager.loadNumberForProduct(productName))
        
        setProductCountLabel()
    }
    
    // MARK: - Helpers
    
    private func setProductCountLabel() {
        productCountLabel.text = productName + ": " + "\(productNumber)"
    }
    
    
    // MARK: - IBAction

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        setProductCountLabel()
        saveLoadProductManager.saveNumberForProduct(productName, number: productNumber)
    }
    
    
    

}
