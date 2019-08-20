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
    @IBOutlet var sun: SpringImageView!
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
        
        startCoreAnimation()
    }
    
    // MARK: - Private Methods
     private func startCoreAnimation() {
        UIImageView.animate(withDuration: 2,
                       delay: 0,
                       options: [.autoreverse, .repeat, .curveEaseInOut],
                       animations: {
                        self.topCloud.frame.origin.x -= 7
                        self.bottomCloud.frame.origin.x += 12
        })
    }

}

