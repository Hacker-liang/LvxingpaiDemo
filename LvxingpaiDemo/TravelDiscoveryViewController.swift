
//
//  TravelDiscovryViewController.swift
//  LvxingpaiDemo
//
//  Created by liangpengshuai on 9/11/15.
//  Copyright (c) 2015 com.xujianinc.www. All rights reserved.
//

import UIKit

class TravelDiscoveryViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    weak var homeCtl: HomeViewController!
    
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        imageView = UIImageView(image: UIImage(named: "travelDiscovery.png"))
        imageView.frame = CGRectMake(0, 0, self.view.bounds.size.width, imageView.bounds.size.height)
        self.scrollView.addSubview(imageView)
        self.scrollView.contentSize = imageView.frame.size
        self.addCategoryButton()
        self.addDestinationButton()
        self.navigationItem.title = "发现旅行"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func addCategoryButton() {
        let btn = UIButton(frame: CGRectMake(0, 260, self.view.bounds.size.width/2, 100))
        btn.addTarget(self, action: "gotoCategoryCtl", forControlEvents: UIControlEvents.TouchUpInside)
        self.scrollView.addSubview(btn)
    }
    
    func addDestinationButton() {
        let btn = UIButton(frame: CGRectMake(self.view.bounds.size.width/2, 260, self.view.bounds.size.width/2, 100))
        btn.addTarget(self, action: "gotoDestination", forControlEvents: UIControlEvents.TouchUpInside)
        self.scrollView.addSubview(btn)
    }

   //MARK: IBAction methods
    
    func gotoCategoryCtl() {
        let ctl = TravelCategoryViewController()
        ctl.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(ctl, animated: true)
    }
    
    func gotoDestination() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let ctl = storyboard.instantiateViewControllerWithIdentifier("destinationCtl") as? TravelDestinationViewController {
            ctl.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(ctl, animated: true)
        }
    }

}
