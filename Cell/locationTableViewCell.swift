//
//  locationTableViewCell.swift
//  destinations
//
//  Created by Anastasia Mousa on 12/4/22.
//

import UIKit

class locationTableViewCell: UITableViewCell {

    @IBOutlet weak var locationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    func setUpLocationLabel(country: Country) {
        locationLabel.text = country.title
    }
    
}
