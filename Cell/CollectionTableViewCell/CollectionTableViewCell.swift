//
//  CollectionTableViewCell.swift
//  destinations
//
//  Created by Anastasia Mousa on 13/4/22.
//

import UIKit

class CollectionTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var attractionsCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        attractionsCollectionView.delegate = self
        attractionsCollectionView.dataSource = self
        let nibName = UINib(nibName: "CollectionViewCell", bundle: nil)
        attractionsCollectionView.register(nibName, forCellWithReuseIdentifier: "CollectionViewCell")
    }
    
    //init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 120, height: 100)
        layout.sectionInset = UIEdgeInsets(top: 3, left: 3, bottom: 3, right: 3)
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        attractionsCollectionView.showsHorizontalScrollIndicator = false
        attractionsCollectionView.showsVerticalScrollIndicator = false
        
        contentView.addSubview(attractionsCollectionView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
        return 4
    }
    
    //cell row for item at
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = attractionsCollectionView.dequeueReusableCell(withReuseIdentifier: "collectionTableViewCell", for: indexPath)
        return cell
    }
    
    //did select item
    /*func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        <#code#>
    }*/
    
    
   
    //func setUpCollectionView
    
}
