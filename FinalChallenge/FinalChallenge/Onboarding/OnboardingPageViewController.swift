//
//  OnboardingPageViewController.swift
//  FinalChallenge
//
//  Created by Resky Javieri on 09/01/19.
//  Copyright © 2019 Kensen Tjoa. All rights reserved.
//

import UIKit

protocol OnboardingPageViewControllerDelegate: class {
    func didUpdatePageIndex(currentIndex: Int)
}

class OnboardingPageViewController: UIPageViewController, UIPageViewControllerDelegate {
    
    //MARK: Properties
    
    weak var onboardingDelegate: OnboardingPageViewControllerDelegate?
    
    var pageHeadings = ["Welcome to MADE", "Take a picture", "Be a fashion icon of yourself"]
    var pageSubheading = ["Create your own lookbook and fashion trend", "Photograph your best look", "Make your own trend and spread the syle"]
    var pageImages = ["dummy-1", "dummy-1", "dummy-1"]
    
    var currentIndex = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        delegate = self
        
        //Create first onboarding screen
        if let startingViewController = contentViewController(at: 0) {
            setViewControllers([startingViewController], direction: .forward, animated: true, completion: nil)
        }

    }
    
    //MARK: Page View Controller Delegate
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        if completed {
            if let contentViewController = pageViewController.viewControllers?.first as? OnboardingContentViewController {
                currentIndex = contentViewController.index
                
                onboardingDelegate?.didUpdatePageIndex(currentIndex: currentIndex)
            }
        }
    }
}

extension OnboardingPageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! OnboardingContentViewController).index
        index -= 1
        print(index)
        return contentViewController(at: index)
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! OnboardingContentViewController).index
        index += 1
        print(index)
        return contentViewController(at: index)
        
    }
    
    //MARK: Helper
    func contentViewController(at index: Int) -> OnboardingContentViewController? {
        if index < 0 || index >= pageHeadings.count {
            return nil
        }
        
        //Create new VC to pass suitable data
        let storyboard = UIStoryboard(name: "Onboarding", bundle: nil)
        if let pageContentViewController = storyboard.instantiateViewController(withIdentifier: "OnboardingContentViewController") as? OnboardingContentViewController {
            pageContentViewController.heading = pageHeadings[index]
            pageContentViewController.subheading = pageSubheading[index]
            pageContentViewController.onboardingImage = pageImages[index]
            pageContentViewController.index = index
            
            return pageContentViewController
        }
        return nil
    }
}

