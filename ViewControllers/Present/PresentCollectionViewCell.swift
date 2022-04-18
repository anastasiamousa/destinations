//
//  PresentCollectionViewCell.swift
//  destinations
//
//  Created by Anastasia Mousa on 15/4/22.
//

import UIKit

class PresentCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var presentCollectionViewCellImage: UIImageView! {
        didSet {
            presentCollectionViewCellImage.contentMode = .scaleAspectFill
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setUpPresentCollectionViewCell (image: UIImage?) {
        presentCollectionViewCellImage.image = image
    }
}
