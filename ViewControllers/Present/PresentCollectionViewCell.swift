//
//  PresentCollectionViewCell.swift
//  destinations
//
//  Created by Anastasia Mousa on 19/4/22.
//

import UIKit

class PresentCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var presentCollectionViewCellImage: UIImageView! {
        didSet {
            presentCollectionViewCellImage.contentMode = .scaleAspectFit
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setUpPresentCollectionViewCell(image: UIImage?) {
        presentCollectionViewCellImage.image = image
    }
    
    

}
