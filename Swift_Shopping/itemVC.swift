//
//  itemVC.swift
//  Swift_Shopping
//
//  Created by zhaoyou on 16/1/25.
//  Copyright © 2016年 zhaoyouwang. All rights reserved.
//

import UIKit

class itemVC: UIViewController {
    
    @IBOutlet weak var itemNameLabel: UILabel!
    
    @IBOutlet weak var brandNameLabel: UILabel!

//    var itemName: String?
//    var brandName: String?
    
    var item: Item?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
//        if itemName != nil {
//            itemNameLabel.text = itemName
//        }
//        
//        if brandName != nil {
//            brandNameLabel.text = brandName
//        }
        
        if item != nil {
            itemNameLabel.text = item?.itemName
            brandNameLabel.text = item?.brandName
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func isBuy(sender: UIButton) {
        if item != nil {
            if item?.isBuy == false {
                item?.isBuy = true
                itemNameLabel.textColor = UIColor.greenColor()
            } else {
                item?.isBuy = false
                itemNameLabel.textColor = UIColor.redColor()
            }
            print(item?.description())
        }
    }
    
}
