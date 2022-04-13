//
//  HeaderImageTableViewCell.swift
//  destinations
//
//  Created by Anastasia Mousa on 13/4/22.
//

import UIKit

class headerImageTableViewCell: UITableViewCell {

    @IBOutlet weak var headerImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    func setUpHeader(country: Country?) {
        headerImage.image = country?.image
    }
    
}
