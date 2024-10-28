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


//Records page

var expenses: [String] = []
extension ViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return expenses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TransactionCell", for: indexPath) as? ExpenseCell else {
            return UITableViewCell()
        }
        cell.textLabel?.text = expenses[indexPath.row]
        cell.ExpenseNameLabel.text = "Shoping"
        cell.ExpenseImageView.image = UIImage(named: " vv")
        cell.ExpenseAmount.text = "₹1000"
        cell.ExpenseDescLabel.text = "Dress"
        return cell
    }
    
    
}
