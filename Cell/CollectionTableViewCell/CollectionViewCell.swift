//
//  CollectionViewCell.swift
//  destinations
//
//  Created by Anastasia Mousa on 14/4/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var attractionImage: UIImageView! {
        didSet {
            attractionImage.contentMode = .scaleAspectFill
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setUpCollectionViewCell(image: UIImage?) {
        attractionImage.image = image
    }
}
