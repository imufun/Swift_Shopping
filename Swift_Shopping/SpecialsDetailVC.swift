//
//  SpecialsDetailVC.swift
//  Swift_Shopping
//
//  Created by zhaoyou on 16/1/27.
//  Copyright © 2016年 zhaoyouwang. All rights reserved.
//

import UIKit

class SpecialsDetailVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var brandLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var originalPriceLabel: UILabel!
    
    var specials: Specials!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if specials != nil {
            nameLabel.text = specials.name
            brandLabel.text = specials.brand
            priceLabel.text = "\(specials.price)"
            originalPriceLabel.text = "\(specials.originalPrice)"
            imageView.image = UIImage(named: specials.imageName)
            
        }
    }
    
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

}
