//
//  LunchCell.swift
//  FoodsNAvigationWithoutNVController
//
//  Created by Mac on 07/10/21.
//

import UIKit

class LunchCell: UITableViewCell {

    @IBOutlet weak var lunchNameLabel: UILabel!
    @IBOutlet weak var hotelNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
