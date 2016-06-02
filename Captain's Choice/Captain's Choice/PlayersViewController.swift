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
    
    var playerNames:Array<String>  = ["0"]
    var PlayerAttendance:Array<Int>  = [0]
    var images:Array<String>  = ["0"]
    let playerNameRef = Firebase(url: "https://spicerwhisper-59eee.firebaseio.com/players/player/name")
    let playerAttendanceRef = Firebase(url: "https://spicerwhisper-59eee.firebaseio.com/players/player/attendance/value")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerNameRef.observeEventType(.Value, withBlock:{snapshot in
            self.playerNames[0] = (snapshot.value) as! String
            self.tableView.reloadData()
            }, withCancelBlock: { error in
                print(error.description)
                
        })
        playerAttendanceRef.observeEventType(.Value, withBlock:{snapshot in
            self.PlayerAttendance[0] = (snapshot.value) as! Int
            self.tableView.reloadData()
            }, withCancelBlock: { error in
                print(error.description)
                
        })
        playerNameRef.observeEventType(.Value, withBlock:{snapshot in
            self.images[0] = snapshot.value as! String
            self.tableView.reloadData()
            }, withCancelBlock: { error in
                print(error.description)
        })
}

//setup header

    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 61.0
    }
    
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let label : UILabel = UILabel()
            label.text = "Players"
            label.textAlignment = NSTextAlignment.Center
            label.textColor = UIColor.blueColor()
        label.backgroundColor = UIColor(red: 123/255, green: 166/255, blue: 191/255, alpha: 1.0)

        return label
    }
    
    
    
    
    
//setup cells
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PlayersTableViewCell", forIndexPath: indexPath) as! PlayerCell
        cell.playerImage.layer.cornerRadius = 30
        cell.playerImage.clipsToBounds = true
        cell.playerImage.layer.masksToBounds = true
        
        if (images != ["0"]) {
            let imagelabel = String(images[indexPath.row]) + ".png"
            cell.playerImage.image = UIImage(named: imagelabel)
        }
        if (playerNames != ["0"]) {
        cell.playerNameLabel.text = playerNames[indexPath.row]
        }
        if (PlayerAttendance != ["0"]) {
        let playerAttendanceLabelFull = "\(PlayerAttendance[indexPath.row])% Attendance"
        cell.playerAttendanceLabel.text = playerAttendanceLabelFull
        }
       
        return cell
    }


}
