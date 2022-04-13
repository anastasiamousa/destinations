//  DetailViewController.swift
//  destinations
//  Created by Anastasia Mousa on 08/4/22.

import UIKit

class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var detailTableView: UITableView!
    
    var country: Country?
    
    //ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        detailTableView.dataSource = self
        detailTableView.delegate = self
        
        let nibNameHeader = UINib(nibName: "headerImageTableViewCell", bundle: nil)
        detailTableView.register(nibNameHeader, forCellReuseIdentifier: "headerImageTableViewCell")
        
        let nibNameLocation = UINib(nibName: "locationTitleTableViewCell", bundle: nil)
        detailTableView.register(nibNameLocation, forCellReuseIdentifier: "locationTitleTableViewCell")
        
        let nibNameDetails = UINib(nibName: "detailsTableViewCell", bundle: nil)
        detailTableView.register(nibNameDetails, forCellReuseIdentifier: "detailsTableViewCell")
        
        let nibNameCollection = UINib(nibName: "collectionTableViewCell", bundle: nil)
        detailTableView.register(nibNameCollection, forCellReuseIdentifier: "collectionTableViewCell")
    }
    
    //height of row
    func tableView(_tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 204
    }
    
    //number of row in section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    //cell for row at
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = detailTableView.dequeueReusableCell(withIdentifier: "headerImageTableViewCell" , for: indexPath) as! headerImageTableViewCell
            return cell
        }
        else if indexPath.section == 1 {
            let cell = detailTableView.dequeueReusableCell(withIdentifier: "locationTitleTableViewCell" , for: indexPath) as! LocationTableViewCell
            return cell
        }
        else if indexPath.section == 2 {
            let cell = detailTableView.dequeueReusableCell(withIdentifier: "detailsTableViewCell" , for: indexPath) as! detailsTableViewCell
            return cell
        }
        else {
            let cell = detailTableView.dequeueReusableCell(withIdentifier: "collectionTableViewCell" , for: indexPath) as! CollectionTableViewCell
            return cell
        }
    }
}
