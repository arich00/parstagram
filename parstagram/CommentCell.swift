//
//  CommentCell.swift
//  parstagram
//
//  Created by Alex Rich on 2/24/19.
//  Copyright © 2019 Alex Rich. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {

    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var comment: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
