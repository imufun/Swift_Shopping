//
//  Item.swift
//  Swift_Shopping
//
//  Created by zhaoyou on 16/1/25.
//  Copyright © 2016年 zhaoyouwang. All rights reserved.
//

import Foundation

class Item {
    var itemName: String = ""
    var brandName: String = ""
    var isBuy: Bool = false
    var imageName: String?
    
    init(itemName: String, brandName: String, isBuy: Bool, imageName: String) {
        self.itemName = itemName
        self.brandName = brandName
        self.isBuy = isBuy
        self.imageName = imageName
    }
    
    convenience init(itemName: String) {
        self.init(itemName: itemName, brandName: "", isBuy: false, imageName: "")
    }
    
    convenience init(itemName: String, brandName: String) {
        self.init(itemName: itemName, brandName: brandName, isBuy: false, imageName: "")
    }
    
    convenience init(itemName: String, imageName: String) {
        self.init(itemName: itemName, brandName: "", isBuy: false, imageName: imageName)
    }
    
    func description() -> String {
        return "itemName: \(itemName) brandName: \(brandName) isBuy: \(isBuy) imageName: \(imageName)"
    }
}
