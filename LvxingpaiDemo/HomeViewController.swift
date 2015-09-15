//
//  HomeViewController.swift
//  LvxingpaiDemo
//
//  Created by liangpengshuai on 9/11/15.
//  Copyright (c) 2015 com.xujianinc.www. All rights reserved.
//

import UIKit

class HomeViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var ctl: AnyObject? = self.viewControllers?.first
        if let navi = ctl as? UINavigationController {
            if let travelDiscoveryCtl = navi.viewControllers.first as? TravelDiscoveryViewController {
                travelDiscoveryCtl.homeCtl = self
            }
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
