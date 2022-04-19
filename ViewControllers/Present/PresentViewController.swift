//
//  PresentViewController.swift
//  destinations
//
//  Created by Anastasia Mousa on 18/4/22.
//

import UIKit

class PresentViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var country: Country?
    var index: Int = 0
   
    @IBOutlet weak var presentCollectionView: UICollectionView! {
        didSet {
            presentCollectionView.delegate = self
            presentCollectionView.dataSource = self
            
            let nibName = UINib(nibName: "PresentCollectionViewCell", bundle: nil)
            presentCollectionView.register(nibName, forCellWithReuseIdentifier: "presentCollectionViewCell")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .secondarySystemBackground
        presentCollectionView.layoutIfNeeded()
        presentCollectionView.scrollToItem(at: IndexPath(row: index, section: 0), at: .left, animated: false)
       
    }
    
                                        
    //number of sections
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    //number of items in section
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return country?.attractions?.count ?? 0
    }
    
    //size for item at
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: view.frame.width, height: presentCollectionView.frame.height)
    }
    
    
    //cell for item at
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionViewCell = presentCollectionView.dequeueReusableCell(withReuseIdentifier: "presentCollectionViewCell", for: indexPath) as! PresentCollectionViewCell
        collectionViewCell.setUpPresentCollectionViewCell(image: country?.attractions?[indexPath.row])
        return collectionViewCell
    }
    
}

