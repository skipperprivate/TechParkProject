//
//  FindTextTableViewCell.swift
//  TechParkProject
//
//  Created by Aleksey Bgattsev on 18.03.2018.
//  Copyright © 2018 Boss. All rights reserved.
//

import UIKit

class FindTextTableViewCell: UITableViewCell {

    @IBOutlet weak var TitleLable: UILabel!
    @IBAction func ButtonCell(_ sender: Any) {
    }
    
    func fillCell(with model: TestCellModel) {
        TitleLable.text = model.title
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
