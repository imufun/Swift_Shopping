//
//  ViewController.swift
//  Swift_Shopping
//
//  Created by zhaoyou on 16/1/25.
//  Copyright © 2016年 zhaoyouwang. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,NewItemVCDelegate {

    @IBOutlet weak var myTableView: UITableView!
//    let toBuyItems = [
//        ("牛奶","三元"),("红烧牛肉面","康师傅"),
//        ("桃汁","汇源"),("巧克力","德芙"),
//        ("地板净","滴露"),("洗发水","飘柔")]
    
    var toBuyItems = [
        Item(itemName: "牛奶",brandName: "三元"),
        Item(itemName: "红烧牛肉面", brandName: "康师傅"),
        Item(itemName: "桃汁", brandName: "汇源"),
        Item(itemName: "巧克力", brandName: "德芙"),
        Item(itemName: "地板净", brandName: "滴露"),
        Item(itemName: "洗发水", brandName: "飘柔")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        myTableView.reloadData()
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toBuyItems.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: "Cell")
//        cell.textLabel?.text = "牛奶"
//        let (item, brand) = toBuyItems[indexPath.row]
//        cell.textLabel?.text = item
//        cell.detailTextLabel?.text = brand
        
        let item = toBuyItems[indexPath.row]
        cell.textLabel?.text = item.itemName
        cell.detailTextLabel?.text = item.brandName
        
        if item.isBuy {
            cell.textLabel?.textColor = .greenColor()
        } else {
            cell.textLabel?.textColor = .redColor()
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("itemSegue", sender: indexPath.row)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "newItemSegue" {
            let destination: NewItemVC = segue.destinationViewController as! NewItemVC
            destination.delegate = self
        } else {
            let destination: itemVC = segue.destinationViewController as! itemVC
            if sender is Int {
                let item = toBuyItems[sender as! Int]
                destination.item = item
            }
        }
    }

    func addNewItem(item: Item) {
        toBuyItems.append(item)
        myTableView.reloadData()
    }
    

}

