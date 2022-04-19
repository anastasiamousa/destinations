//  DetailViewController.swift
//  destinations
//  Created by Anastasia Mousa on 08/4/22.

import UIKit
 
enum ContentEnum {
    case imageHeader
    case title
    case description
    case gallery
}

class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var structure: [ContentEnum] = [.imageHeader, .title, .description, .gallery]
    
    @IBOutlet weak var detailTableView: UITableView!
    
    var country: Country?
    
    //ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        detailTableView.separatorStyle = .none
        
        detailTableView.dataSource = self
        detailTableView.delegate = self
        
        let nibNameHeader = UINib(nibName: "HeaderImageTableViewCell", bundle: nil)
        detailTableView.register(nibNameHeader, forCellReuseIdentifier: "headerImageTableViewCell")
        
        let nibNameLocation = UINib(nibName: "LocationTitleTableViewCell", bundle: nil)
        detailTableView.register(nibNameLocation, forCellReuseIdentifier: "locationTitleTableViewCell")
        
        let nibNameDetails = UINib(nibName: "DetailsTableViewCell", bundle: nil)
        detailTableView.register(nibNameDetails, forCellReuseIdentifier: "detailsTableViewCell")
        
        let nibNameCollection = UINib(nibName: "CollectionTableViewCell", bundle: nil)
        detailTableView.register(nibNameCollection, forCellReuseIdentifier: "collectionTableViewCell")
        
    }
    
    //height of row
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch structure [indexPath.row] {
        case .imageHeader:
            return detailTableView.frame.width
        case .title, .description:
            return UITableView.automaticDimension
        case .gallery:
            return 150
        }
    }
    
    //number of row in section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return structure.count
    }
    
    //cell for row at
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch structure[indexPath.row] {
        case .imageHeader:
            let cell = detailTableView.dequeueReusableCell(withIdentifier: "headerImageTableViewCell" , for: indexPath) as! headerImageTableViewCell
            cell.setUpHeader(country: country)
            return cell
        case .title:
            let cell = detailTableView.dequeueReusableCell(withIdentifier: "locationTitleTableViewCell" , for: indexPath) as! LocationTableViewCell
            cell.setUpLocationLabel(country: country)
            return cell
        case .description:
            let cell = detailTableView.dequeueReusableCell(withIdentifier: "detailsTableViewCell" , for: indexPath) as! detailsTableViewCell
            cell.setUpDetailsTextView(country: country)
            return cell
        case .gallery:
            let cell = detailTableView.dequeueReusableCell(withIdentifier: "collectionTableViewCell" , for: indexPath) as! CollectionTableViewCell
            cell.setUpCollectionView(country: country)
            cell.delegate = self
            return cell
        }
    }
}

extension DetailViewController: CollectionTableViewCellDelegate {
    func didSelectPhoto(index: Int) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "presentViewController") as? PresentViewController
        vc?.country = country
        vc?.index = index
        guard let vc = vc else {
            return
        }
        
        self.navigationController?.present(vc, animated: true)
    }
}
