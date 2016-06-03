//
//  CarTableViewCell.swift
//  JRChae_Test
//
//  Created by MF839-008 on 2016. 6. 3..
//  Copyright © 2016년 JRChae. All rights reserved.
//

import UIKit

class CarTableViewCell: UITableViewCell {

    @IBOutlet weak var carMaker: UILabel!
    @IBOutlet weak var carName: UILabel!
    @IBOutlet weak var carImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
