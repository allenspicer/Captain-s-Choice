//
//  HomeViewController.swift
//  Captain's Choice
//
//  Created by Allen Spicer on 5/31/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit
import MessageUI

class HomeViewController: UIViewController,  MFMessageComposeViewControllerDelegate{
    
    
    @IBOutlet weak var opponentNameLabel: UILabel!
    @IBOutlet weak var gameTimeLabel: UILabel!
    @IBOutlet weak var gameLocationLabel: UILabel!
    @IBOutlet weak var button: UIButton!


    override func viewDidLoad() {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height))
        let image = UIImage(named: "1.jpeg")
        imageView.image = image
        self.view.addSubview(imageView)
        button.layer.borderColor = UIColor.whiteColor().CGColor
        button.layer.borderWidth = 2
        super.viewDidLoad()
    }
    

    @IBAction func contactTeam(sender: UIButton) {
        
        
        if !MFMessageComposeViewController.canSendText() {
            print("Sorry amigo, SMS services are not available")
            
        }else{
        let composeVC = MFMessageComposeViewController()
        
        composeVC.messageComposeDelegate = self
        
        // Configure the fields of the interface.
        composeVC.recipients = ["4085551212", "4085551211", "4085551213", "4085551214", "4085551215"]
        composeVC.body = "Sorry everyone. Our game today is cancelled"
        
        // Present the view controller modally.
        self.presentViewController(composeVC, animated: true, completion: nil)
            
            
        
        }
        
    }
    
    func messageComposeViewController(controller: MFMessageComposeViewController,
                                      didFinishWithResult result: MessageComposeResult) {
        // Check the result or perform other tasks.
        
        // Dismiss the mail compose view controller.
        controller.dismissViewControllerAnimated(true, completion: nil)
    }




    
    

}

