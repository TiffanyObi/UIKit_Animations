//
//  TabViewController.swift
//  UIKit_Animations
//
//  Created by Tiffany Obi on 1/31/20.
//  Copyright © 2020 Tiffany Obi. All rights reserved.
//

import UIKit

class AnimationsTabController: UITabBarController {

    
    private lazy var sampleAnimationsVC:SampleAnimationsViewController = {
        let viewController = SampleAnimationsViewController()
        viewController.tabBarItem = UITabBarItem(title: "SampleAnimations", image: UIImage(systemName: "1.circle"), tag: 0)
        return viewController
    }()
    
    private lazy var contraintsAnimationsVC: ContraintsAnimationsController = {
        let viewController = ContraintsAnimationsController()
        viewController.tabBarItem = UITabBarItem(title: "ConstraintsAnimations", image: UIImage(systemName: "2.circle"), tag: 1)
        return viewController
    }()
    
    override func viewDidLoad() {
         super.viewDidLoad()
       
        
        // set view controllers for the tab bar
        // in our app we will have two tabs
       

        viewControllers = [sampleAnimationsVC,contraintsAnimationsVC]
   

}
}
