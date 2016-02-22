//
//  BusinessCell.swift
//  Yelp
//
//  Created by Myles Johnson on 2/21/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {
    @IBOutlet weak var thumbView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var rateView: UIImageView!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var reviewLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var categoriesLabel: UILabel!
    
    var business: Business!{
        didSet{
            nameLabel.text = business.name
            thumbView.setImageWithURL(business.imageURL!)
            rateView.setImageWithURL(business.ratingImageURL!)
            addressLabel.text = business.address
            reviewLabel.text = "\(business.reviewCount!) Reviews"
            distanceLabel.text = business.distance
            categoriesLabel.text = business.categories
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //thumbView.layer.cornerRadius = 5
        thumbView.clipsToBounds = true
        
       // nameLabel.preferredMaxLayoutWidth  = nameLabel.frame.size.width
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        //nameLabel.preferredMaxLayoutWidth  = nameLabel.frame.size.width
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
