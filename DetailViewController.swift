//  DetailViewController.swift
//  destinations
//  Created by Anastasia Mousa on 08/4/22.

import UIKit

class DetailViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var detailTableView: UITableView!
    
    var country: Country?
    
    //@IBOutlet weak var detailsLabel: UILabel!
    //@IBOutlet weak var detailsTextView: UITextView!
    
    //ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        detailTableView.dataSource = self
        
        /*self.detailsLabel.text = self.country?.title
        self.detailsTextView.text = self.country?.details
        updateTextView()*/
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        return cell
    }
}
