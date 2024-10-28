//
//  ExpenseCell.swift
//  Money-Plant
//
//  Created by admin15 on 29/10/24.
//

import UIKit

class ExpenseCell: UITableViewCell {

    @IBOutlet weak var ExpenseImageView: UIImageView!
    
    
    @IBOutlet weak var ExpenseNameLabel: UILabel!
    
    
    @IBOutlet weak var ExpenseDescLabel: UILabel!
    
    @IBOutlet weak var ExpenseAmount: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
