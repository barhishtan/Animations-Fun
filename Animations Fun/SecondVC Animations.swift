//
//  SecondVC Animations.swift
//  Animations Fun
//
//  Created by Artur Sokolov on 20/08/2019.
//  Copyright © 2019 Artur Sokolov. All rights reserved.
//

import UIKit

extension SecondVC {
    
    // MARK: - Animations
    func shakeLabel() {
        label.animation = "shake"
        label.curve = "easyInOut"
        label.duration = 3
        label.scaleX = 3
        label.scaleX = 3
        label.rotate = 3
        label.damping = 0.5
        label.velocity = 0.5
        label.animate()
        
        label.text = " This is a 'Shake' animation with rotate "
    }
    
    func popLabel() {
        label.animation = "pop"
        label.curve = "linear"
        label.duration = 1
        label.animate()
        
        label.text = " This is a 'Pop' animation "
    }
    
    func swingLabel() {
        label.animation = "swing"
        label.curve = "spring"
        label.force = 2.5
        label.duration = 2
        label.scaleX = 1.2
        label.scaleY = 1.2
        label.velocity = 0
        label.animate()
        
        label.text = " This is a 'Swing' animation "
    }
}
