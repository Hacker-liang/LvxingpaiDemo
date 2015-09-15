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
        self.view.backgroundColor = UIColor(red: 239, green: 240, blue: 243, alpha: 1)
        scrollView = UIScrollView(frame: CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height))
        self.view.addSubview(scrollView)
        scrollView.backgroundColor = UIColor(red: 239, green: 240, blue: 243, alpha: 1)
        imageView = UIImageView(image: UIImage(named: "payList.png"))
        imageView.frame = CGRectMake(0, 0, self.view.bounds.size.width, imageView.bounds.size.height)
        self.scrollView.addSubview(imageView)
        self.scrollView.contentSize = CGSizeMake(imageView.frame.size.width, imageView.frame.size.height+100)
        
        self.navigationItem.title = "预订"
        self.addPayBtn()
    }

    func addPayBtn() {
        let btn = UIButton(frame: CGRectMake(0, 200, self.view.bounds.size.width, 500))
        self.scrollView.addSubview(btn)
        btn.addTarget(self, action: "gotoPayDetail", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func gotoPayDetail() {
        let ctl = PoiPayDetailViewController()
        ctl.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(ctl, animated: true)
    }
}
