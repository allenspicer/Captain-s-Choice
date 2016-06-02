//
//  UpdatesViewController.swift
//  Captain's Choice
//
//  Created by Allen Spicer on 6/1/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit
import Firebase

class UpdatesViewController: UIViewController {

    var count = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        let yposition = count*Int(view.bounds.height*0.1)
        let rect = CGRectMake(CGFloat(view.bounds.width*0.1), CGFloat(yposition), CGFloat(view.bounds.width*0.8), CGFloat(view.bounds.height*0.2))
        let update1 = UIView(frame: rect)
        update1.tintColor = UIColor.orangeColor()
       let updateColor = UIColor.init(colorLiteralRed: 123/255, green: 166/255, blue: 191/255, alpha: 1.0)
        update1.layer.backgroundColor = updateColor.CGColor
        view.addSubview(update1)
        
        }

}