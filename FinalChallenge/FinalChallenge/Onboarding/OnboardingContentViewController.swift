//
//  OnboardingContentViewController.swift
//  FinalChallenge
//
//  Created by Resky Javieri on 09/01/19.
//  Copyright © 2019 Kensen Tjoa. All rights reserved.
//

import UIKit

class OnboardingContentViewController: UIViewController {
    
    //MARK: Outlet
    
    @IBOutlet var headingLabel: UILabel! {
        didSet {
            headingLabel.numberOfLines = 0
        }
    }
    
    @IBOutlet var subheadingLabel: UILabel! {
        didSet {
            subheadingLabel.numberOfLines = 0
        }
    }
    
    @IBOutlet var onboardingImageView: UIImageView! {
        didSet {
            onboardingImageView.layer.cornerRadius = 25.0
            onboardingImageView.layer.masksToBounds = true
        }
    }
    
    //MARK: Properties
    
    var index = 0
    var heading = ""
    var subheading = ""
    var onboardingImage = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        headingLabel.text = heading
        subheadingLabel.text = subheading
        onboardingImageView.image = UIImage(named: onboardingImage)
        

    }
    


}
