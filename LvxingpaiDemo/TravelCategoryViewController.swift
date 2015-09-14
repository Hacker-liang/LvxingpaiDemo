//
//  TravelCategoryViewController.swift
//  LvxingpaiDemo
//
//  Created by liangpengshuai on 9/14/15.
//  Copyright (c) 2015 com.xujianinc.www. All rights reserved.
//

import UIKit

class TravelCategoryViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        self.view.backgroundColor = UIColor.whiteColor()
        imageView = UIImageView(image: UIImage(named: "travelCategory.png"))
        imageView.frame = CGRectMake(0, 0, self.view.bounds.size.width, imageView.bounds.size.height)
//        self.scrollView.addSubview(imageView)
//        self.scrollView.contentSize = imageView.frame.size
        
//        println("scrollView Frame: \(self.scrollView.bounds)")
        println("self.view Frame: \(self.view.bounds)")

        
        self.navigationItem.title = "分类"
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
    

}
