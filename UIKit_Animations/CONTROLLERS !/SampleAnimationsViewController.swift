//
//  SampleAnimationsViewController.swift
//  UIKit_Animations
//
//  Created by Tiffany Obi on 1/31/20.
//  Copyright © 2020 Tiffany Obi. All rights reserved.
//

import UIKit

class SampleAnimationsViewController: UIViewController {
    
    private var sampleView = SampleAnimationView()
    
    override func loadView() {
        view = sampleView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  .systemTeal
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        scaleAnimation()
//       pulsatingAnimation()
    }

    private func scaleAnimation() {
        // properties we could animate
        /*
         - alpha
         -corner radius
         -position
         -center
         -transiition
         -background Color
         -shadow
         -opacity
         -transform: scale,rotate
         
         */
// note: transform value of 1.0 represents the identity of the view so it wont show
             
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [], animations: {
            self.sampleView.pursuitLogo.transform = CGAffineTransform(scaleX: 20.0, y: 20.0)
            self.sampleView.pursuitLogo.alpha = 0.0
        }) { (done) in
            
            UIView.animate(withDuration: 0.3) {
        self.sampleView.swiftLogo.isHidden = false
                
        self.sampleView.swiftLogo.layer.cornerRadius = self.sampleView.swiftLogo.bounds.size.width / 2.0
            }
        }
    }
    
    private func pulsatingAnimation() {
        UIView.animate(withDuration: 3.0, delay: 0.0, options: [.repeat], animations: {
            // animation block here
            
            self.sampleView.pursuitLogo.transform = CGAffineTransform(scaleX: 5.0, y: 5.0)
        }) { (done) in
            // code to be executed after animation completes
            //option1 - you can reset view's values
            //option2 - creates a next animation
            
            UIView.animate(withDuration: 0.3)  {
                self.sampleView.pursuitLogo.transform =
                CGAffineTransform.identity //
            }
            
            
            //note: if you want to go beyond creating an animation in this completions handler the better choice would be animateKeyFrames()
            
            
        }
    }
}
