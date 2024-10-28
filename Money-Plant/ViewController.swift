//
//  ViewController.swift
//  Money-Plant
//
//  Created by Rohan on 21/10/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mondayLabel: UILabel!
    
    @IBOutlet weak var tuesdayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configure each label with circular border
        configureLabelAsCircle(mondayLabel)
        configureLabelAsCircle(tuesdayLabel)
    }

    func configureLabelAsCircle(_ label: UILabel) {
        label.layer.cornerRadius = label.frame.size.width / 2
        label.layer.borderWidth = 5.0
        label.layer.borderColor = UIColor.blue.cgColor // Customize the color
        label.clipsToBounds = true
    }


}

