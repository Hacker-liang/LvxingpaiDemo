
//
//  TravelActivityViewController.swift
//  LvxingpaiDemo
//
//  Created by liangpengshuai on 9/15/15.
//  Copyright (c) 2015 com.xujianinc.www. All rights reserved.
//

import UIKit

class TravelActivityViewController: UIViewController {

    var scrollView: UIScrollView!
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        self.view.backgroundColor = UIColor(red: 239, green: 240, blue: 243, alpha: 1)

        scrollView = UIScrollView(frame: CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height))
        self.view.addSubview(scrollView)
        imageView = UIImageView(image: UIImage(named: "icon_activity.png"))
        imageView.frame = CGRectMake(0, 0, self.view.bounds.size.width, imageView.bounds.size.height)
        self.scrollView.addSubview(imageView)
        self.scrollView.contentSize = CGSizeMake(imageView.frame.size.width, imageView.frame.size.height+100)
        
        self.navigationItem.title = "滑翔"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addCategoryBtn() {
        let btn = UIButton(frame: CGRectMake(150, 200, 320, self.view.bounds.size.width-150))
        btn.addTarget(self, action: "gotoActivity", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    
    //MARK: IBAction Methods
    
    func gotoActivity() {
      
        
    }


}
