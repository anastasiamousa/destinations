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
        
        updateTextView()
        
    }
    
    func updateTextView() {
        let path = "https://www.booking.com/"
        let text = detailsTextView.text ?? "-"
        let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "here")
        detailsTextView.attributedText = attributedString
        let font = detailsTextView.font
        detailsTextView.font = font
    }
}
