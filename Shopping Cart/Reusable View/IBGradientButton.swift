//
//  IBGradientButton.swift
//  Nudge
//
//  Created by 胡洞明 on 2021-05-05.
//

import UIKit


@IBDesignable
class IBGradientButton: UIButton {
    
    @IBInspectable var firstColor: UIColor = .systemRed
    
    @IBInspectable var secondColor: UIColor = .systemOrange {
        didSet { updateView() }
    }
    
    @IBInspectable var isVertical: Bool = false {
        didSet { updateView() }
    }
    
    override class var layerClass: AnyClass {
        get {
            return CAGradientLayer.self
        }
    }
    
    func updateView() {
        let layer = self.layer as! CAGradientLayer
        layer.colors = [firstColor, secondColor].map{$0.cgColor}
        
        if isVertical {
            layer.startPoint = CGPoint(x: 0.5, y: 0)
            layer.endPoint = CGPoint(x: 0.5, y: 1)
        } else {
            layer.startPoint = CGPoint(x: 0, y: 0.5)
            layer.endPoint = CGPoint(x: 1, y: 0.5)
        }
    }
}
