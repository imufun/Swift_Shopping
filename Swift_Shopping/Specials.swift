//
//  Specials.swift
//  Swift_Shopping
//
//  Created by zhaoyou on 16/1/26.
//  Copyright © 2016年 zhaoyouwang. All rights reserved.
//

import UIKit

enum SpecialsCategory: Int {
    case food = 0, drink, clothing, stationery, mobile
}

class Specials: NSObject {
    
    var name = ""//<商品名称
    var brand = ""//<商品品牌
    let category: SpecialsCategory!//<商品类别
    var price = 0.0//<商品价格
    var originalPrice = 0.0//<折扣前价格
    var imageName = ""//<照片
    
    init(name: String, brand: String, category: SpecialsCategory, price: Double, originalPrice: Double, imageName: String) {
        self.name = name
        self.brand = brand
        self.category = category
        self.price = price
        self.originalPrice = originalPrice
        self.imageName = imageName
    }
}
