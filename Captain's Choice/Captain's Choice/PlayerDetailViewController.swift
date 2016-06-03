//
//  PlayerDetailViewController.swift
//  Captain's Choice
//
//  Created by Allen Spicer on 6/3/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit

class PlayerDetailViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBAction func backButton(sender: UIButton) {
        self.performSegueWithIdentifier("unwindToPlayerView", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        image.image = UIImage(named: "george.png")
        
        
    }
    
    

    
    
    
}
