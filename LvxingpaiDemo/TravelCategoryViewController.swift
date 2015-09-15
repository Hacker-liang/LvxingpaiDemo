//
//  TravelCategoryViewController.swift
//  LvxingpaiDemo
//
//  Created by liangpengshuai on 9/14/15.
//  Copyright (c) 2015 com.xujianinc.www. All rights reserved.
//

import UIKit

class TravelCategoryViewController: UIViewController {

    var scrollView: UIScrollView!
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        self.view.backgroundColor = UIColor(red: 239, green: 240, blue: 243, alpha: 1)
        scrollView = UIScrollView(frame: CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height))
        self.view.addSubview(scrollView)
        imageView = UIImageView(image: UIImage(named: "travelCategory.png"))
        imageView.frame = CGRectMake(0, 0, self.view.bounds.size.width, imageView.bounds.size.height)
        self.scrollView.addSubview(imageView)
        self.scrollView.contentSize = CGSizeMake(imageView.frame.size.width, imageView.frame.size.height+100)
        
        self.navigationItem.title = "分类"
        self.addCategoryBtn()
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addCategoryBtn() {
        let btn = UIButton(frame: CGRectMake(150, 200, 320, self.view.bounds.size.width-150))
        btn.addTarget(self, action: "gotoActivity", forControlEvents: UIControlEvents.TouchUpInside)
        self.scrollView.addSubview(btn)
    }
    
    
    //MARK: IBAction Methods
    
    func gotoActivity() {
        let ctl = TravelActivityViewController()
        ctl.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(ctl, animated: true)
    }

}








