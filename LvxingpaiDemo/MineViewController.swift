//
//  MineViewController.swift
//  LvxingpaiDemo
//
//  Created by liangpengshuai on 9/14/15.
//  Copyright (c) 2015 com.xujianinc.www. All rights reserved.
//

import UIKit

class MineViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        imageView = UIImageView(image: UIImage(named: "travelMine.png"))
        imageView.frame = CGRectMake(0, 0, self.view.bounds.size.width, imageView.bounds.size.height)
        self.scrollView.addSubview(imageView)
        self.scrollView.contentSize = imageView.frame.size
        
        self.navigationItem.title = "我"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
