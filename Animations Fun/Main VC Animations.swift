//
//  Main VC Animations.swift
//  Animations Fun
//
//  Created by Artur Sokolov on 20/08/2019.
//  Copyright © 2019 Artur Sokolov. All rights reserved.
//

import UIKit

extension MainViewController {
    func animateClouds() {
        UIImageView.animate(withDuration: 2,
                            delay: 0,
                            options: [.autoreverse, .repeat, .curveEaseInOut],
                            animations: {
                                self.topCloud.frame.origin.x -= 7
                                self.bottomCloud.frame.origin.x += 12
        })
    }
        
    func animateSun() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
            
        pulse.duration = 2
        pulse.fromValue = 0.95
        pulse.toValue = 1.05
        pulse.autoreverses = true
        pulse.repeatCount = Float.greatestFiniteMagnitude
       
        sun.layer.add(pulse, forKey: nil)
        }
    }
