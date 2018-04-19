//
//  MyTestsTableViewCell.swift
//  TechParkProject
//
//  Created by Виталий Малахов on 16.03.2018.
//  Copyright © 2018 Boss. All rights reserved.
//

import UIKit

class MyTestsTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var testTitleLabel: UILabel!
    @IBOutlet weak var testTitleImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
