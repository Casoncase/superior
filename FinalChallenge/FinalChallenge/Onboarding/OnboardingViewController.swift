//
//  OnboardingViewController.swift
//  FinalChallenge
//
//  Created by Resky Javieri on 09/01/19.
//  Copyright © 2019 Kensen Tjoa. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController, OnboardingPageViewControllerDelegate {
    
    //MARK: Outlets
    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var startButton: UIButton! {
        didSet {
            startButton.layer.cornerRadius = 25.0
            startButton.layer.masksToBounds = true
            startButton.backgroundColor = UIColor.red
        }
    }
    
    //MARK: Properties
    var onboardingPageViewController: OnboardingPageViewController?
    
    //MARK: Actions
    @IBAction func startButtonTapped(sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func didUpdatePageIndex(currentIndex: Int) {
        updateUI()
        print("updated")
    }
    
    func updateUI() {
        if let index = onboardingPageViewController?.currentIndex {
            switch index {
            case 0...1:
                startButton.isEnabled = false
                startButton.backgroundColor = UIColor.red
            case 2:
                startButton.isEnabled = true
                startButton.backgroundColor = UIColor.black
            default: break
            }
            pageControl.currentPage = index
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination
        if let pageViewController = destination as? OnboardingPageViewController {
            onboardingPageViewController = pageViewController
            onboardingPageViewController?.onboardingDelegate = self
        }
    }
    
}
