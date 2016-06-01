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

    
    var teamRecords:Array<String>  = ["0"]
    var teamNames:Array<String>  = ["0"]
    var teamRanks:Array<Int>  = [0]
    let teamNameRef = Firebase(url: "https://spicerwhisper-59eee.firebaseio.com/league/team/name")
    let teamRankRef = Firebase(url: "https://spicerwhisper-59eee.firebaseio.com/league/team/rank")
    let teamRecordRef = Firebase(url: "https://spicerwhisper-59eee.firebaseio.com/league/team/record")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        teamNameRef.observeEventType(.Value, withBlock:{snapshot in
           self.teamNames[0] = (snapshot.value) as! String
            self.tableView.reloadData()
            }, withCancelBlock: { error in
                print(error.description)
                
        })
        teamRankRef.observeEventType(.Value, withBlock:{snapshot in
            self.teamRanks[0] = (snapshot.value) as! Int
            self.tableView.reloadData()
            }, withCancelBlock: { error in
                print(error.description)
                
        })
        teamRecordRef.observeEventType(.Value, withBlock:{snapshot in
            self.teamRecords[0] = snapshot.value as! String
            self.tableView.reloadData()
            }, withCancelBlock: { error in
                print(error.description)
                
        })
        
 
}
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TeamCell", forIndexPath: indexPath) as! TeamCell
        
        if (teamNames != ["0"]) {
            cell.teamName.text = teamNames[0]}
        
        if (teamRanks != ["0"]){
    cell.teamRank.text = String(teamRanks[0])}
        
        if (teamRecords != ["0"]) {
            cell.teamRecord.text = teamRecords[0]}
        
        return cell
    }
    
    
}
