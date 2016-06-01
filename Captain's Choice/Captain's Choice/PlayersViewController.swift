//
//  PlayersViewController.swift
//  Captain's Choice
//
//  Created by Allen Spicer on 5/31/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit
import Firebase

class PlayersViewController: UITableViewController {
    

    
    var playerNames = ["Kramer", "George", "Newman"]
    var playerAttendance = ["65", "90", "80"]
    var images = [UIImage(named: "kramer.png"), UIImage(named: "george.png"), UIImage(named: "newman.png")]
   // let ref = Firebase(url: "https://spicerwhisper-59eee.firebaseio.com/league/team/name")
    
    override func viewDidLoad() {
        super.viewDidLoad()
     //   ref.observeEventType(.Value, withBlock:{snapshot in
     //       print(snapshot.value)
     //       }, withCancelBlock: { error in
     //           print(error.description)
      //  })
        
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playerNames.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PlayersTableViewCell", forIndexPath: indexPath) as! PlayerCell
        cell.playerImage.layer.cornerRadius = 30
        cell.playerImage.clipsToBounds = true
        cell.playerImage.layer.masksToBounds = true
        cell.playerImage.image = images[indexPath.row]
        cell.playerNameLabel.text = playerNames[indexPath.row]
        let playerAttendanceLabelFull = "\(playerAttendance[indexPath.row])% Attendance"
        cell.playerAttendanceLabel.text = playerAttendanceLabelFull

       
        return cell
    }


}
