//
//  ViewController.swift
//  AutolayoutCode
//
//  Created by mac on 22.03.18.
//  Copyright © 2018 Dim Malysh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var topView: UIView!
    var bottomView: UIView!
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        initViews()
        createConstraints()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func initViews() {
        //Init
        topView = UIView()
        bottomView = UIView()
        imageView = UIImageView()
        
        //Prepare auto layouts
        topView.translatesAutoresizingMaskIntoConstraints = false
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        //Set background colors
        topView.backgroundColor = UIColor.lightGray
        bottomView.backgroundColor = UIColor.white
        imageView.backgroundColor = UIColor.darkGray
        
        //Additional options
        imageView.image = UIImage(named: "man")
        imageView.contentMode = UIViewContentMode.scaleAspectFill
        
        //Add to the superviews
        view.addSubview(topView)
        view.addSubview(bottomView)
        topView.addSubview(imageView)
    }
    
    func createConstraints() {
        
        //Create constraints for topView
        let pinLeftTopView = NSLayoutConstraint(item: topView, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1.0, constant: 0.0)
        let pinRightTopView = NSLayoutConstraint(item: topView, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1.0, constant: 0.0)
        let pinTopTopView = NSLayoutConstraint(item: topView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 0.0)
        let verticalTopView = NSLayoutConstraint(item: topView, attribute: .bottom, relatedBy: .equal, toItem: bottomView, attribute: .top, multiplier: 1.0, constant: 0.0)
        let heightTopView = NSLayoutConstraint(item: topView, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.65, constant: 0.0)
        
        //Create constraints for bottomView
        let pinLeftBottomView = NSLayoutConstraint(item: bottomView, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1.0, constant: 0.0)
        let pinRightBottomView = NSLayoutConstraint(item: bottomView, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1.0, constant: 0.0)
        let pinBottomBottomView = NSLayoutConstraint(item: bottomView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: 0.0)
        
        //Create constraints for imageView
        let centerXImageView = NSLayoutConstraint(item: imageView, attribute: .centerX, relatedBy: .equal, toItem: topView, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        let centerYImageView = NSLayoutConstraint(item: imageView, attribute: .centerY, relatedBy: .equal, toItem: topView, attribute: .centerY, multiplier: 1.0, constant: 0.0)
        let heightImageView = NSLayoutConstraint(item: imageView, attribute: .height, relatedBy: .equal, toItem: topView, attribute: .height, multiplier: 0.75, constant: 0.0)
        let widthImageView = NSLayoutConstraint(item: imageView, attribute: .width, relatedBy: .equal, toItem: topView, attribute: .height, multiplier: 0.75, constant: 0.0)
        
        //Add constraints to the superview
        view.addConstraints([pinLeftTopView, pinTopTopView, pinRightTopView, verticalTopView, heightTopView, pinLeftBottomView, pinRightBottomView, pinBottomBottomView, centerXImageView, centerYImageView, widthImageView, heightImageView])
    }
}
