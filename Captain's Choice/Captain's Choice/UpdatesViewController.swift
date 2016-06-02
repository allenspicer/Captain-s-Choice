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

    override func viewDidLoad() {
        super.viewDidLoad()
        labelCreator(1)
        
        }

    
    
    
    
    func labelCreator(count:Int){
        let yposition = Int(view.bounds.height*0.1)
        //orange square
        let rect2 = CGRectMake(CGFloat((view.bounds.width*0.1)-5), CGFloat(yposition+2), CGFloat(view.bounds.width*0.4), CGFloat(view.bounds.height*0.03))
        let titleView = UIView(frame: rect2)
        titleView.tintColor = UIColor.orangeColor()
        view.addSubview(titleView)
        //blue update box
        let rect = CGRectMake(CGFloat(view.bounds.width*0.1), CGFloat(yposition), CGFloat(view.bounds.width*0.8), CGFloat(view.bounds.height*0.2))
        let update = UIView(frame: rect)
        let updateColor = UIColor.init(colorLiteralRed: 123/255, green: 166/255, blue: 191/255, alpha: 1.0)
        update.layer.backgroundColor = updateColor.CGColor
        view.addSubview(update)
        


        
        
    }
    
}