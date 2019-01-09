//
//  FeaturedViewController.swift
//  FinalChallenge
//
//  Created by Gior Fasolini on 08/01/19.
//  Copyright © 2019 Kensen Tjoa. All rights reserved.
//

import UIKit

class FeaturedViewController: UIViewController {

    //MARK: Outlet Declaration
    @IBOutlet weak var featuredTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let storyboard = UIStoryboard(name: "Onboarding", bundle: nil)
        if let onboardingViewController = storyboard.instantiateViewController(withIdentifier: "OnboardingViewController") as? OnboardingViewController {
            present(onboardingViewController, animated: true, completion: nil)
        }
    }
}


extension FeaturedViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = featuredTableView.dequeueReusableCell(withIdentifier: "featuredCell", for: indexPath)
        return cell
    }
    
    
}
