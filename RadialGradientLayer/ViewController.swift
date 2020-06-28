//
//  ViewController.swift
//  RadialGradientLayer
//
//  Created by Mumtaz Hussain on 26/06/2020.
//  Copyright © 2020 Mumtaz Hussain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let innerColor =  UIColor(red: 255.0/255.0, green: 222/255.0, blue: 130/255.0, alpha: 1.0).cgColor
    let outerColor = UIColor(red: 240/255.0, green: 189/255.0, blue: 77/255.0, alpha: 1.0).cgColor
    
    var gradientLayer: CAGradientLayer {
        let gradientLayer = CAGradientLayer()
        gradientLayer.type = .radial
        gradientLayer.colors = [innerColor, outerColor]
        gradientLayer.frame = self.view.bounds
        gradientLayer.locations = [0, 0.9, 1]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.2, y: 1.2)
        return gradientLayer
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setGradientBackground()
    }

    func setGradientBackground() {
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }

}

