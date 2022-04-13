//
//  collectionTableViewCell.swift
//  destinations
//
//  Created by Anastasia Mousa on 12/4/22.
//

import UIKit

class collectionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var collectionTitle: UILabel!
    
    @IBOutlet weak var collection: UICollectionView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    func setUpCollection(country: Country) {
        collectionTitle.text = country.title
    }
    
    

    
    
}
