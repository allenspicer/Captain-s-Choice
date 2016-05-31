//
//  PlayersViewController.swift
//  Captain's Choice
//
//  Created by Allen Spicer on 5/31/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit

class PlayersViewController: UITableViewController {
    

    
    var playerNames = ["Kramer", "George", "Newman"]
    var playerAttendance = ["65", "90", "80"]
    var images = [UIImage(named: "kramer.png"), UIImage(named: "george.png"), UIImage(named: "newman.png")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.tableView.tableHeaderView
        
        
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PlayersTableViewCell", forIndexPath: indexPath) as! PlayerCell
        
        cell.playerImage.image = images[indexPath.row]
        cell.playerNameLabel.text = playerNames[indexPath.row]
        let playerAttendanceLabelFull = "\(playerAttendance[indexPath.row])% Attendance"
        cell.playerAttendanceLabel.text = playerAttendanceLabelFull

       
        return cell
    }


}
