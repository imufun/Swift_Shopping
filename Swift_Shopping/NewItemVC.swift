//
//  NewItemVC.swift
//  Swift_Shopping
//
//  Created by zhaoyou on 16/1/25.
//  Copyright © 2016年 zhaoyouwang. All rights reserved.
//

import UIKit

protocol NewItemVCDelegate {
    func addNewItem(item: Item)
}

class NewItemVC: UIViewController {

    @IBOutlet weak var itemName: UITextField!
    
    @IBOutlet weak var brandName: UITextField!
    
    var item: Item?
    
//    var delegate: NewItemVCDelegate! = nil
//    var delegate = NewItemVCDelegate!()
    var delegate: NewItemVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func saveItem(sender: UIButton) {
        if  itemName.text != "" && brandName.text != "" {
            item = Item(itemName: itemName.text!, brandName: brandName.text!)
            
            delegate?.addNewItem(item!)
            
            self.navigationController?.popViewControllerAnimated(true)
        } else {
            let alertController = UIAlertController(title: "温馨提醒", message: "您输入商品信息不完整哦", preferredStyle: .Alert)
            let cancelAction = UIAlertAction(title: "取消", style: .Cancel, handler: nil)
            alertController.addAction(cancelAction)
            self.presentViewController(alertController, animated: true, completion: nil)
        }
        
//        self
        
    }

}
