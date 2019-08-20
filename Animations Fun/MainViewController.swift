//
//  ViewController.swift
//  Animations Fun
//
//  Created by Artur Sokolov on 20/08/2019.
//  Copyright © 2019 Artur Sokolov. All rights reserved.
//

import UIKit
import Spring

class MainViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var button: SpringButton!
    @IBOutlet var sun: UIImageView!
    @IBOutlet var topCloud: UIImageView!
    @IBOutlet var bottomCloud: UIImageView!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
 
        view.addSkyGradient()
        
        button.layer.borderWidth = 1.5
        button.layer.borderColor = UIColor.black.cgColor
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true,
                                                     animated: animated)
        animateClouds()
        animateSun()
        button.animate()
    }
    
}

