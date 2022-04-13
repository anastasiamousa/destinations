//
//  TableViewCell.swift
//  destinations
//
//  Created by Anastasia Mousa on 11/4/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var labelCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    func setUp(country: Country) {
        imageCell.image = country.image
        labelCell.text = country.title ?? "-"
    }

}
