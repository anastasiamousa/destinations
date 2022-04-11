//
//  ViewController.swift
//  destinations
//
//  Created by Anastasia Mousa on 11/4/22.
//

import UIKit

struct Country {
    var image: UIImage?
    var title: String?
    var details: String?
}

class ViewController: UIViewController {
    
    var data: [Country] = [Country(image: UIImage(named: "Athens"),    title: "Athens, Greece",         details: "Athens is the capital of Greece. The city dominates the Attica region and is one of the world's oldest cities, with its recorded history spanning over 3,400 years and its earliest human presence beginning somewhere between the 11th and 7th centuries BC. https://www.booking.com/athens"),
                           Country(image: UIImage(named: "Paris"),     title: "Paris, France",          details: "Paris is the capital of France"),
                           Country(image: UIImage(named: "Berlin"),    title: "Berlin, Germany",        details: "Berlin is the capital of Germany"),
                           Country(image: UIImage(named: "Amsterdam"), title: "Amsterdam, Netherlands", details: "Amsterdam is the capital of The Netherlands"),
                           Country(image: UIImage(named: "Brussels"),  title: "Brussels, Belgium",      details: "Brussels is the capital of Belgium"),
                           Country(image: UIImage(named: "Dublin"),    title: "Dublin, Ireland",        details: "]Dublin is the capital of Ireland"),
                           Country(image: UIImage(named: "Madrid"),    title: "Madrid, Spain",          details: "Madrid is the capital of Spain"),
                           Country(image: UIImage(named: "Nicosia"),   title: "Nicosia, Cyprus",        details: "Nicosia is the capital of Cyprus"),
                           Country(image: UIImage(named: "Rome"),      title: "Rome, Italy",            details: "Rome is the capital of Italy"),
                           Country(image: UIImage(named: "Vienna"),    title: "Vienna, Austria",        details: "Vienna is the capital of Austria"),]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource, UITextViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath as IndexPath) as! TableViewCell
        cell.setUp(country: self.data[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let country = self.data[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DetailsViewControllerIdentifier") as? DetailViewController
        vc?.country = country
        guard let vc = vc else {
            return
        }
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
}
