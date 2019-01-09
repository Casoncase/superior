//
//  OnboardingPageViewController.swift
//  FinalChallenge
//
//  Created by Resky Javieri on 09/01/19.
//  Copyright © 2019 Kensen Tjoa. All rights reserved.
//

import UIKit

class OnboardingPageViewController: UIPageViewController {
    
    //MARK: Properties
    var pageHeadings = ["Heading-1", "Heading-2", "Heading-3"]
    var pageSubheading = ["Subheading-1", "Subheading-2", "Subheading-3"]
    var pageImages = ["dummy-1", "dummy-1", "dummy-1"]
    
    var currentIndex = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        
        //Create first onboarding screen
        if let startingViewController = contentViewController(at: 0) {
            setViewControllers([startingViewController], direction: .forward, animated: true, completion: nil)
        }

    }
}

extension OnboardingPageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! OnboardingContentViewController).index
        index -= 1
        
        return contentViewController(at: index)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! OnboardingContentViewController).index
        index += 1
        
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
