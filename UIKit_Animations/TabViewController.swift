//
//  TabViewController.swift
//  UIKit_Animations
//
//  Created by Tiffany Obi on 1/31/20.
//  Copyright © 2020 Tiffany Obi. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController {

    override func viewDidLoad() {
         super.viewDidLoad()
       
        
        // set view controllers for the tab bar
        // in our app we will have two tabs
       

        viewControllers = [SampleAnimationsViewController(),ContraintsViewController()]
   

}
}
