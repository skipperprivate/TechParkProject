//
//  PostTableViewCell.swift
//  TechParkProject
//
//  Created by Oleg on 21.05.2018.
//  Copyright © 2018 Boss. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    
    @IBOutlet weak var testnameLabel: UILabel!
    //@IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var WriteLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func set(post:Post) {
        testnameLabel.text = post.author
        WriteLabel.text = post.text
    }
    
}
