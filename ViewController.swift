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
    //var details: [String]?
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var data: [Country] = [Country(image: UIImage(named: "Athens"),    title: "Athens, Greece",
                           Country(image: UIImage(named: "Paris"),     title: "Paris, France"),
                           Country(image: UIImage(named: "Berlin"),    title: "Berlin, Germany"),
                           Country(image: UIImage(named: "Amsterdam"), title: "Amsterdam, Netherlands"),
                           Country(image: UIImage(named: "Brussels"),  title: "Brussels, Belgium"),
                           Country(image: UIImage(named: "Dublin"),    title: "Dublin, Ireland"),
                           Country(image: UIImage(named: "Madrid"),    title: "Madrid, Spain"),
                           Country(image: UIImage(named: "Nicosia"),   title: "Nicosia, Cyprus"),
                           Country(image: UIImage(named: "Rome"),      title: "Rome, Italy"),
                           Country(image: UIImage(named: "Vienna"),    title: "Vienna, Austria"),]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath) as! TableViewCell
        cell.imageCell.image = self.data[indexPath.row].image
        cell.labelCell.text = self.data[indexPath.row].title ?? "-"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //ViewController.Country = self.data[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

