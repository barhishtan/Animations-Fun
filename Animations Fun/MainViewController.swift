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
    
    // MARK: Private Properties
    private var topCloudOrigin: CGFloat?
    private var bottomCloudOrigin: CGFloat?
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topCloudOrigin = topCloud.frame.origin.x
        bottomCloudOrigin = bottomCloud.frame.origin.x
        
        view.addSkyGradient()
        
        button.layer.borderWidth = 1.5
        button.layer.borderColor = UIColor.black.cgColor
        
        animateClouds()
        animateSun()
    }
    
}

