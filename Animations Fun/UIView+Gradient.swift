//
//  MainVC+Gradient.swift
//  Animations Fun
//
//  Created by Artur Sokolov on 20/08/2019.
//  Copyright © 2019 Artur Sokolov. All rights reserved.
//

import UIKit

extension UIView {
    func addSkyGradient() {
        let gradient = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [#colorLiteral(red: 0.1040495852, green: 0.5650975692, blue: 0.8143795054, alpha: 1).cgColor, #colorLiteral(red: 0.3166020215, green: 0.7221747041, blue: 0.9130454063, alpha: 1).cgColor, #colorLiteral(red: 0.5807557106, green: 0.8148335814, blue: 0.9448421597, alpha: 1).cgColor]
        gradient.locations = [0.0, 0.4, 0.8]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        self.layer.insertSublayer(gradient, at: 0)
    }
    
}
