//
//  FeaturedTableViewCell.swift
//  FinalChallenge
//
//  Created by Gior Fasolini on 08/01/19.
//  Copyright © 2019 Kensen Tjoa. All rights reserved.
//

import UIKit

class FeaturedTableViewCell: UITableViewCell {

    //MARK: Outlet Declaration
    @IBOutlet weak var featuredImage: UIImageView! {
        didSet {
            self.featuredImage.layer.cornerRadius = 15.0
            self.featuredImage.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var featuredBy: UILabel! {
        didSet {
            self.featuredBy.numberOfLines = 0
        }
    }
    
    @IBOutlet weak var featuredTitle: UILabel! {
        didSet {
            self.featuredTitle.numberOfLines = 0
        }
    }
    
    @IBOutlet weak var featuredCaption: UILabel! {
        didSet {
            self.featuredCaption.numberOfLines = 0
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
