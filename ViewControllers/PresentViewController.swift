//
//  PresentViewController.swift
//  destinations
//
//  Created by Anastasia Mousa on 15/4/22.
//
import UIKit

class PresentViewController: UIViewController {
    
    @IBOutlet weak var presentViewController: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //register nib
        let presentViewController = PresentViewController(nibName: "presentViewController", bundle: nil)
        //present view modally
        self.present(presentViewController, animated: true, completion: nil)
    }
}
