//
//  PoiPayListViewController.swift
//  LvxingpaiDemo
//
//  Created by liangpengshuai on 9/15/15.
//  Copyright (c) 2015 com.xujianinc.www. All rights reserved.
//

import UIKit

class PoiPayListViewController: UIViewController {

    var scrollView: UIScrollView!
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        self.view.backgroundColor = UIColor.whiteColor()
        scrollView = UIScrollView(frame: CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height))
        self.view.addSubview(scrollView)
        imageView = UIImageView(image: UIImage(named: "payList.png"))
        imageView.frame = CGRectMake(0, 0, self.view.bounds.size.width, imageView.bounds.size.height)
        self.scrollView.addSubview(imageView)
        self.scrollView.contentSize = CGSizeMake(imageView.frame.size.width, imageView.frame.size.height+100)
        
        self.navigationItem.title = "预订"
    }

}
