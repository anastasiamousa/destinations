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
    
    var data: [Country] = [Country(image: UIImage(named: "Athens"),    title: "Athens, Greece",         details: "Athens is the capital of Greece. The city dominates the Attica region and is one of the world's oldest cities, with its recorded history spanning over 3,400 years and its earliest human presence beginning somewhere between the 11th and 7th centuries BC. Book your next trip to Athens here: https://www.booking.com/athens"),
                           Country(image: UIImage(named: "Paris"),     title: "Paris, France",          details: "Paris is the capital of France. Since the 17th century, Paris has been one of the world's major centres of finance, diplomacy, commerce, fashion, gastronomy, science, and arts, and has sometimes been referred to as the capital of the world. Book your next trip to Paris here: https://www.booking.com/paris"),
                           Country(image: UIImage(named: "Berlin"),    title: "Berlin, Germany",        details: "Berlin is the capital and largest city of Germany by both area and population. Its 3.7 million inhabitants make it the European Union's most populous city, according to population within city limits. Book your next trip to Berlin here: https://www.booking.com/berlin"),
                           Country(image: UIImage(named: "Amsterdam"), title: "Amsterdam, The Netherlands", details: "Amsterdam is the capital and most populous city of the Netherlands; with a population of 905,234 within the city proper, 1,558,755 in the urban area and 2,480,394 in the metropolitan area. Book your next trip to Amsterdam here: https://www.booking.com/amsterdam"),
                           Country(image: UIImage(named: "Brussels"),  title: "Brussels, Belgium",      details: "Brussels is a region of Belgium comprising 19 municipalities, including the City of Brussels, which is the capital of Belgium. The Brussels-Capital Region is located in the central portion of the country and is a part of both the French Community of Belgium and the Flemish Community. Book your next trip to Brussels here: https://www.booking.com/brussels"),
                           Country(image: UIImage(named: "Dublin"),    title: "Dublin, Ireland",        details: "Dublin is the capital and largest city of Ireland. Situated on a bay on the east coast, at the mouth of the River Liffey, it is in the province of Leinster and the Eastern and Midland Region. Book your next trip to Ireland here: https://www.booking.com/dublin"),
                           Country(image: UIImage(named: "Madrid"),    title: "Madrid, Spain",          details: "Madrid is the capital and most populous city of Spain. The city has almost 3.4 million inhabitants and a metropolitan area population of approximately 6.7 million. Book your next trip to Madrid here: https://www.booking.com/madrid"),
                           Country(image: UIImage(named: "Nicosia"),   title: "Nicosia, Cyprus",        details: "Nicosia is the largest city, capital, and seat of government of Cyprus. It is located near the centre of the Mesaoria plain, on the banks of the River Pedieos. Book your next trip to Nicosia here: https://www.booking.com/"),
                           Country(image: UIImage(named: "Rome"),      title: "Rome, Italy",            details: "Rome is the capital city of Italy. It is also the capital of the Lazio region, the centre of the Metropolitan City of Rome, and a special comune named Comune di Roma Capitale. Book your next trip to Rome here: https://www.booking.com/rome"),
                           Country(image: UIImage(named: "Vienna"),    title: "Vienna, Austria",        details: "Vienna is the national capital, largest city, and one of nine states of Austria. Vienna is Austria's most populous city, with about 2 million inhabitants (2.6 million within the metropolitan area, nearly one third of the country's population). Book your next trip to Vienna here: https://www.booking.com/vienna"),]

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
