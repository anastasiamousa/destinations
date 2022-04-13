//
//  detailsTableViewCell.swift
//  destinations
//
//  Created by Anastasia Mousa on 12/4/22.
//

import UIKit

class detailsTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var detailsTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    func setUpDetailsTextView(country: Country) {
        detailsTextView.text = country.details
    }
    
}
