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

    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }


    @IBAction func contactTeam(sender: UIButton) {
        
        if !MFMessageComposeViewController.canSendText() {
            print("SMS services are not available")
        }
        let composeVC = MFMessageComposeViewController()
        
        composeVC.messageComposeDelegate = self
        
        // Configure the fields of the interface.
        composeVC.recipients = ["4085551212"]
        composeVC.body = "Hello from California!"
        
        // Present the view controller modally.
        self.presentViewController(composeVC, animated: true, completion: nil)
        
        
    
        
    }
    
    func messageComposeViewController(controller: MFMessageComposeViewController,
                                      didFinishWithResult result: MessageComposeResult) {
        // Check the result or perform other tasks.
        
        // Dismiss the mail compose view controller.
        controller.dismissViewControllerAnimated(true, completion: nil)
    }




    
    

}

