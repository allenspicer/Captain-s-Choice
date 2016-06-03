//
//  LeagueDetailViewController.swift
//  Captain's Choice
//
//  Created by Allen Spicer on 6/3/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit

class LeagueDetailViewController: UIViewController {
    @IBAction func backButton(sender: UIButton) {
        self.performSegueWithIdentifier("unwindToLeagueView", sender: self)

    }

}
