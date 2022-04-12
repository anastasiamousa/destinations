//  DetailViewController.swift
//  destinations
//  Created by Anastasia Mousa on 08/4/22.

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailsLabel: UILabel!
   
    @IBOutlet weak var detailsTextView: UITextView!
    
    var country: Country?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        self.detailsLabel.text = self.country?.title
        self.detailsTextView.text = self.country?.details
        
        /*let attributedAthens = NSMutableAttributedString(string: "Book your next trip to Athens here:" )
        attributedAthens.addAttribute(.link, value: "https://www.booking.com/athens", range: NSRange(location: 38, length: 55))
        detailsTextView.attributedText = attributedAthens*/
    }
}
