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
    
    
    //MARK: Variable Declaration
    var dummyImages: [String] = ["dummy3", "dummy3", "dummy3"]
    var dummyBy: [String] = ["Nicole Kidman", "Resky Javieri", "Ferlix Yanto Wang"]
    var dummyTitle: [String] = ["Stylish look with black shirt and jeans", "Learn how to pick right magazines for your appreances", "Top fashion styles just for you"]
    var dummyCaption: [String] = ["You can have anything you want in life if you dress for it", "Clothes mean nothing until someone lives in them", "Style is a way to say who you are without having to speak"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Datasource and delegate
        self.featuredTableView.dataSource = self
        self.featuredTableView.delegate = self
        

        // Make featured title large
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        
        let storyboard = UIStoryboard(name: "Onboarding", bundle: nil)
        if let onboardingViewController = storyboard.instantiateViewController(withIdentifier: "OnboardingViewController") as? OnboardingViewController {
            present(onboardingViewController, animated: true, completion: nil)
        }
    }
}


extension FeaturedViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.featuredTableView.dequeueReusableCell(withIdentifier: "featuredCell", for: indexPath) as! FeaturedTableViewCell
        cell.featuredImage.image = UIImage(named: dummyImages[indexPath.row])
        cell.featuredBy.text = dummyBy[indexPath.row]
        cell.featuredTitle.text = dummyTitle[indexPath.row]
        cell.featuredCaption.text = dummyCaption[indexPath.row]
        
        return cell
    }
    
    
}
