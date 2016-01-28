//
//  SpecialForSupermarkerTVC.swift
//  Swift_Shopping
//
//  Created by zhaoyou on 16/1/26.
//  Copyright © 2016年 zhaoyouwang. All rights reserved.
//

import UIKit

class SpecialForSupermarkerTVC: UITableViewController {
    let specialsItems = [
        Specials(name: "西梅", brand: "超达", category: SpecialsCategory.food, price: 2.8, originalPrice: 5.3, imageName: "ximei"),
        Specials(name: "iPhone 5s", brand: "Apple", category: SpecialsCategory.mobile, price: 4189, originalPrice: 4488, imageName: "iPhone5s"),
        Specials(name: "好多鱼", brand: "好丽友", category: SpecialsCategory.food, price: 11.8, originalPrice: 13.4, imageName: "haoduoyu"),
        Specials(name: "天然水", brand: "农夫山泉", category: SpecialsCategory.drink, price: 26.9, originalPrice: 32.0, imageName: "tianranshui"),
        Specials(name: "柠檬片", brand: "鲜引力", category: SpecialsCategory.food, price: 2.9, originalPrice: 3.8, imageName: "ningmengpian"),
        Specials(name: "杏仁露", brand: "露露", category: SpecialsCategory.drink, price: 15.9, originalPrice: 21.3, imageName: "xingrenlu"),
        Specials(name: "小米4", brand: "小米", category: SpecialsCategory.mobile, price: 1299, originalPrice: 1999, imageName: "xiaomi4")
        
    ]
    
    var categorySpecials = [Int: [Specials]]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        self.configData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func configData() {
        for specials in specialsItems {
            if categorySpecials[specials.category.rawValue] == nil {
                categorySpecials[specials.category.rawValue] = [specials]
            } else {
                categorySpecials[specials.category.rawValue]?.append(specials)
            }
        }
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return categorySpecials.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let categorys = Array(categorySpecials.keys)
        return categorySpecials[categorys[section]]!.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
//        let cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
        
        let cell = tableView.dequeueReusableCellWithIdentifier("SpecialsCell", forIndexPath: indexPath) as! SpecialsTVC

        let categorys = Array(categorySpecials.keys)
        let specials = categorySpecials[categorys[indexPath.section]]![indexPath.row]
        
//        cell.textLabel?.text = specials.name
//        cell.detailTextLabel?.text = specials.brand
        
        cell.nameLabel.text = specials.name
        cell.brandLabel.text = specials.brand
//        cell.albumImageView.

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SpecialsDetailSegue" {
            let destination: SpecialsDetailVC = segue.destinationViewController as! SpecialsDetailVC
            let indexPath: NSIndexPath = self.tableView.indexPathForSelectedRow!
            
            let categorys = Array(categorySpecials.keys)
            let specials = categorySpecials[categorys[indexPath.section]]![indexPath.row]
            destination.specials = specials
        }
    }

    
}
