//
//  DetailsTableViewCell.swift
//  destinations
//
//  Created by Anastasia Mousa on 13/4/22.
//

import UIKit

class detailsTableViewCell: UITableViewCell {
   
    @IBOutlet weak var detailsTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    func setUpDetailsTextView(country: Country?) {
        detailsTextView.attributedText = NSAttributedString.makeHyperlink(for: "https://www.booking.com", in: country?.details ?? "", as: "here")
    }
}
