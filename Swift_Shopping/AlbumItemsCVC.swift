//
//  AlbumItemsCVC.swift
//  Swift_Shopping
//
//  Created by zhaoyou on 16/1/28.
//  Copyright © 2016年 zhaoyouwang. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class AlbumItemsCVC: UICollectionViewController,UICollectionViewDelegateFlowLayout {
    
    var categoryItems:[String: [Item]]!

    //MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
        
        self.configData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func configData() {
        categoryItems = [
            "食品" : [Item(itemName: "西梅", imageName: "ximei"),
            Item(itemName: "好多鱼", imageName: "haoduoyu"),
            Item(itemName: "柠檬片", imageName: "ningmengpian"),
            Item(itemName: "仙贝", imageName: "xianbei"),
            Item(itemName: "薯片", imageName: "shupian"),
            Item(itemName: "瓜子", imageName: "guazi"),
            Item(itemName: "手撕牛肉", imageName: "shousiniurou")],
            "手机": [Item(itemName: "iPhone 5s", imageName: "iPhone 5s"),
            Item(itemName: "小米4", imageName: "xiaomi4")],
            "饮料": [Item(itemName: "天然水", imageName: "tianranshui"),
            Item(itemName: "杏仁露", imageName: "xingrenlu")]
        ]
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return categoryItems.count
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        var items = [Item]()
        for (index, value) in EnumerateSequence(categoryItems) {
            if index == section {
                (_, items) = value
            }
        }
        
        return items.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath)
    
        // Configure the cell
        let resuseIdentifier = "PhotoCell"
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(resuseIdentifier, forIndexPath: indexPath) as! ItemPhotoCVCell
        
        var items = [Item]()
        for (index, value) in EnumerateSequence(categoryItems) {
            if index == indexPath.section {
                (_, items) = value
            }
        }
        
        let imageName = items[indexPath.row].imageName
        cell.imageView.image = UIImage(named: imageName!)
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}
