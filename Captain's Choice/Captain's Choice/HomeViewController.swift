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
    @IBOutlet weak var daylabel: UIButton!
    @IBOutlet weak var winLossLabel: UILabel!
    var whichPage:Int = 2
    let imageView:UIImageView = UIImageView()
    
    override func viewDidLoad() {
        loadHomePage()
        button.layer.borderColor = UIColor.whiteColor().CGColor
        button.layer.borderWidth = 2
        super.viewDidLoad()

    }
    
    @IBAction func backButton(sender: AnyObject) {
        if (whichPage > 1){
        whichPage = whichPage - 1
            loadHomePage()}
    }
    @IBAction func forwardButton(sender: AnyObject) {
        if (whichPage < 3){
        whichPage = whichPage + 1
        loadHomePage()}
    }
    
    func loadHomePage(){
        if (self.view.subviews.contains(imageView)){
            imageView.removeFromSuperview()
        }
        let frame2 = (frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: view.bounds.height))
        imageView.frame = frame2
        let image = UIImage(named: "\(whichPage).jpeg")
        self.imageView.contentMode = UIViewContentMode.ScaleAspectFill
        imageView.image = image
        self.view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
        updateLabels()
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

    func updateLabels(){
        //today
        if (whichPage == 2){
            daylabel.setTitle("Today", forState: .Normal)
            button.setTitle("Contact Team", forState: .Normal)
            opponentNameLabel.text = "Flying Tigers"
            gameTimeLabel.text = "6:00PM"
            gameLocationLabel.text = "Hyde Ballpark"
            winLossLabel.text = ""
            winLossLabel.backgroundColor = UIColor.clearColor()
            
    //yesterday
        }else if(whichPage == 1){
            daylabel.setTitle("May 3", forState: .Normal)
            button.setTitle("Add Stats", forState: .Normal)
            opponentNameLabel.text = "Eagles"
            gameTimeLabel.text = "7:00PM"
            gameLocationLabel.text = "Powell Ballpark"
            winLossLabel.text = "W 7 - 4"
            winLossLabel.font = winLossLabel.font.fontWithSize(20)
            winLossLabel.textColor = UIColor.whiteColor()
            winLossLabel.backgroundColor = UIColor.greenColor()

            
    //tomorrow
        }else if (whichPage == 3){
            daylabel.setTitle("May 10", forState: .Normal)
            button.setTitle("View Team", forState: .Normal)
            opponentNameLabel.text = "Warlocks"
            gameTimeLabel.text = "8:00PM"
            gameLocationLabel.text = "David's Park"
            winLossLabel.text = ""
            winLossLabel.backgroundColor = UIColor.clearColor()
        }

    }

}

