//
//  LeagueViewController.swift
//  Captain's Choice
//
//  Created by Allen Spicer on 5/31/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit
import Firebase

class LeagueViewController: UITableViewController {

    
    var teamRanks  = ["1", "1", "1"]
    var teamNames = ["Southside", "Southside", "Southside"]
    var teamRecords = ["7-3", "7-3", "7-3",]
    let ref = Firebase(url: "https://spicerwhisper-59eee.firebaseio.com/league/team/name")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref.observeEventType(.Value, withBlock:{snapshot in
           self.teamNames[0] = (snapshot.value) as! String
            print(self.teamNames[0])
            self.tableView.reloadData()
            }, withCancelBlock: { error in
                print(error.description)
                
        })
}
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teamNames.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TeamCell", forIndexPath: indexPath) as! TeamCell
        
    cell.teamName.text = teamNames[indexPath.row]
    cell.teamRank.text = teamRanks[indexPath.row]
    cell.teamRecord.text = teamRecords[indexPath.row]
        
        return cell
    }
    
    
}
