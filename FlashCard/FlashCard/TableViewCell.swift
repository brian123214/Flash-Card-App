//
//  TableViewCell.swift
//  FlashCard
//
//  Created by Brian Song on 12/13/20.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var word1: UITextField!
    @IBOutlet weak var word2: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
