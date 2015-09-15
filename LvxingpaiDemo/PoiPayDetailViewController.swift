//
//  PoiPayDetailViewController.swift
//  LvxingpaiDemo
//
//  Created by liangpengshuai on 9/15/15.
//  Copyright (c) 2015 com.xujianinc.www. All rights reserved.
//

import UIKit

class PoiPayDetailViewController: UIViewController {

    var scrollView: UIScrollView!
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        
        self.view.backgroundColor = UIColor(red: 239, green: 240, blue: 243, alpha: 1)

        scrollView = UIScrollView(frame: CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height))
        self.view.addSubview(scrollView)
        imageView = UIImageView(image: UIImage(named: "payDetail.png"))
        imageView.frame = CGRectMake(0, 0, self.view.bounds.size.width, imageView.bounds.size.height)
        self.scrollView.addSubview(imageView)
        self.scrollView.contentSize = CGSizeMake(imageView.frame.size.width, imageView.frame.size.height+100)
        
        scrollView.backgroundColor = UIColor(red: 239, green: 240, blue: 243, alpha: 1)

        self.navigationItem.title = "详情"
        
        self.addBookBar()
    }
    
    func addBookBar() {
        let btn = UIButton(frame: CGRectMake(0, self.view.bounds.size.height-60, self.view.bounds.size.width, 60))
        btn.setBackgroundImage(UIImage(named: "icon_book_tabbar.png"), forState: UIControlState.Normal)
        self.view.addSubview(btn)
    }
    
    
}
