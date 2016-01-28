//
//  SpecialsTVC.swift
//  Swift_Shopping
//
//  Created by zhaoyou on 16/1/26.
//  Copyright © 2016年 zhaoyouwang. All rights reserved.
//

import UIKit

class SpecialsTVC: UITableViewCell {

    @IBOutlet weak var albumImageView: UIView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var brandLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
