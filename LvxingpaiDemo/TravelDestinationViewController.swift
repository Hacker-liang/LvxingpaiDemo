//
//  TravelDestinationViewController.swift
//  LvxingpaiDemo
//
//  Created by liangpengshuai on 9/14/15.
//  Copyright (c) 2015 com.xujianinc.www. All rights reserved.
//

import UIKit

class TravelDestinationViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        imageView = UIImageView(image: UIImage(named: "travelDestination.png"))
        imageView.frame = CGRectMake(0, 0, self.view.bounds.size.width, imageView.bounds.size.height)
        self.scrollView.addSubview(imageView)
        self.scrollView.contentSize = imageView.frame.size
        
        self.navigationItem.title = "目的地"
        self.addPoiButton()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func addPoiButton() {
        let btnOne = UIButton(frame: CGRectMake(115, 170, 125, 75))
        btnOne.addTarget(self, action: "gotoPoiOne", forControlEvents: UIControlEvents.TouchUpInside)
        self.scrollView.addSubview(btnOne)
        
        let btnTwo = UIButton(frame: CGRectMake(250, 170, 125, 75))
        btnTwo.addTarget(self, action: "gotoPoiTwo", forControlEvents: UIControlEvents.TouchUpInside)
        self.scrollView.addSubview(btnTwo)
    }
    
    //MARK: IBAction Methods
    
    func gotoPoiOne() {
        let ctl = LightSpotOfPoiViewController(poiType: 0)
        ctl.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(ctl, animated: true)
    }
    
    func gotoPoiTwo() {
        let ctl = LightSpotOfPoiViewController(poiType: 1)
        ctl.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(ctl, animated: true)
    }
}














