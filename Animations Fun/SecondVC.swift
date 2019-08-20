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
    
    // MARK: Available animations enum
    enum Animations: String {
        case pop = "'Pop' animation"
        case swing = "'Swing' animation"
        case shake = "'Shake' animation"
    }
    
    var currentAnimation: Animations = .pop
    
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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(false,
                                                     animated: animated)
    }
    
    // MARK: - IB Actions
    @IBAction func buttonPressed() {
        switch currentAnimation {
        case .pop:
            popLabel()
            currentAnimation = .shake
        case .shake:
            shakeLabel()
            currentAnimation = .swing
        case .swing:
            swingLabel()
            currentAnimation = .pop
        }
        
        button.setTitle("Try \(currentAnimation.rawValue)", for: .normal)
    }
}

