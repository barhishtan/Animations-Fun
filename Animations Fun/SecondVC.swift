//
//  SecondVC.swift
//  Animations Fun
//
//  Created by Artur Sokolov on 20/08/2019.
//  Copyright © 2019 Artur Sokolov. All rights reserved.
//

import UIKit
import Spring

class SecondVC: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var button: SpringButton!
    @IBOutlet var label: SpringLabel!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSkyGradient()
        
        button.layer.borderWidth = 1.5
        button.layer.borderColor = UIColor.black.cgColor
        
        label.layer.borderWidth = 1.5
        label.layer.borderColor = UIColor.black.cgColor
        label.clipsToBounds = true
    }
    
    // MARK: - IB Actions
    @IBAction func buttonPressed(_ sender: SpringButton) {
        
    }
    
}
