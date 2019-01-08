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
    @IBOutlet weak var featuredImage: UIImageView!
    @IBOutlet weak var featuredTitle: UILabel!
    @IBOutlet weak var featuredPostedBy: UILabel!
    @IBOutlet weak var featuredDescription: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
