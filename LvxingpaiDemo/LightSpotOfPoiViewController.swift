//
//  LightSpotOfPoiViewController.swift
//  LvxingpaiDemo
//
//  Created by liangpengshuai on 9/15/15.
//  Copyright (c) 2015 com.xujianinc.www. All rights reserved.
//

import UIKit

class LightSpotOfPoiViewController: UIViewController {

    private var poiType: Int = 0
    
    var scrollView: UIScrollView!
    var imageView: UIImageView!
    
    convenience init(poiType: Int) {
        self.init()
        self.poiType = poiType
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        self.view.backgroundColor = UIColor(red: 239, green: 240, blue: 243, alpha: 1)

        scrollView = UIScrollView(frame: CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height))
        self.view.addSubview(scrollView)
        
        if poiType == 0 {
            imageView = UIImageView(image: UIImage(named: "lightspot_one.png"))
        } else {
            imageView = UIImageView(image: UIImage(named: "lightspot_two.png"))

        }
        imageView.frame = CGRectMake(0, 0, self.view.bounds.size.width, imageView.bounds.size.height)
        self.scrollView.addSubview(imageView)
        self.scrollView.contentSize = CGSizeMake(imageView.frame.size.width, imageView.frame.size.height+100)
        
        let backBtn = UIButton(frame: CGRectMake(10, 20, 40, 44))
        backBtn.setTitle("返回", forState: UIControlState.Normal)
        backBtn.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        backBtn.addTarget(self, action: "backTo", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(backBtn)
        
        self.addButtons()
        self.addBookBar()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    func addButtons() {
        if self.poiType == 0 {
            let btn = UIButton(frame: CGRectMake(0, 260, self.view.bounds.size.width, 500))
            self.scrollView.addSubview(btn)
            btn.addTarget(self, action: "gotoPayDetail", forControlEvents: UIControlEvents.TouchUpInside)
            
        } else {
            let btn = UIButton(frame: CGRectMake(0, 260, self.view.bounds.size.width, 500))
            self.scrollView.addSubview(btn)
            btn.addTarget(self, action: "gotoPayList", forControlEvents: UIControlEvents.TouchUpInside)
        }
    }
    
    func addBookBar() {
        let btn = UIButton(frame: CGRectMake(0, self.view.bounds.size.height-60, self.view.bounds.size.width, 60))
        btn.setBackgroundImage(UIImage(named: "icon_book.png"), forState: UIControlState.Normal)
        btn.addTarget(self, action: "gotoPayList", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btn)
    }
    
    //MARK: IBAction methods
    
    func backTo() {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    func gotoPayDetail() {
        let ctl = PoiPayDetailViewController()
        ctl.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(ctl, animated: true)
    }
    
    func gotoPayList() {
        let ctl = PoiPayListViewController()
        ctl.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(ctl, animated: true)

    }
}



















