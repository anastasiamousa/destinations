//
//  CollectionTableViewCell.swift
//  destinations
//
//  Created by Anastasia Mousa on 13/4/22.
//

import UIKit

class CollectionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var attractionsCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let nibName = UINib(nibName: "CollectionViewCell", bundle: nil)
        attractionsCollectionView.register(nibName, forCellWithReuseIdentifier: "CollectionViewCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
