//
//  OnboardingViewController.swift
//  FinalChallenge
//
//  Created by Resky Javieri on 09/01/19.
//  Copyright © 2019 Kensen Tjoa. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    //MARK: Outlets
    
    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var nextButton: UIButton! {
        didSet {
            nextButton.layer.cornerRadius = 25.0
            nextButton.layer.masksToBounds = true
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}
