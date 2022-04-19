//
//  CollectionTableViewCell.swift
//  destinations
//
//  Created by Anastasia Mousa on 13/4/22.
//

import UIKit

protocol CollectionTableViewCellDelegate: AnyObject {
    func didSelectPhoto(index: Int)
}

class CollectionTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var country: Country?
    weak var delegate: CollectionTableViewCellDelegate?
    
    @IBOutlet weak var attractionsCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        attractionsCollectionView.delegate = self
        attractionsCollectionView.dataSource = self
        let nibName = UINib(nibName: "CollectionViewCell", bundle: nil)
        attractionsCollectionView.register(nibName, forCellWithReuseIdentifier: "collectionViewCell")
    }
    
    //init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: 120, height: 100)
        layout.sectionInset = UIEdgeInsets(top: 3, left: 3, bottom: 3, right: 3)
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        attractionsCollectionView.showsHorizontalScrollIndicator = false
        attractionsCollectionView.showsVerticalScrollIndicator = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    //setSelected
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    //number of sections
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    //number of items in section
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return country?.attractions?.count ?? 0
    }
    
    //cell for item at
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = attractionsCollectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! CollectionViewCell
        cell.setUpCollectionViewCell(image: country?.attractions?[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 150, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.delegate?.didSelectPhoto(index: indexPath.row)
    }
    
    func setUpCollectionView(country: Country?) {
        self.country = country
        self.attractionsCollectionView.reloadData()
    }    
}
