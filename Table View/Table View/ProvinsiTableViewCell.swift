//
//  ProvinsiTableViewCell.swift
//  Table View
//
//  Created by macOS User on 12/11/20.
//

import UIKit

class ProvinsiTableViewCell: UITableViewCell {
    
    @IBOutlet weak var provinsiView: UIView!
    @IBOutlet weak var provinsiImg: UIImageView!
    @IBOutlet weak var provinsiLbl: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
