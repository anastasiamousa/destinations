//
//  LocationTitleTableViewCell.swift
//  destinations
//
//  Created by Anastasia Mousa on 13/4/22.
//

import UIKit

class LocationTableViewCell: UITableViewCell {

    @IBOutlet weak var locationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    func setUpLocationLabel(country: Country?) {
        locationLabel.text = country?.title
    }
    
}
