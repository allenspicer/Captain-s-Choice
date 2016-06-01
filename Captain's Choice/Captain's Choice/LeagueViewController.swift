//
//  LeagueViewController.swift
//  Captain's Choice
//
//  Created by Allen Spicer on 5/31/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit

class LeagueViewController: UITableViewController {

    
    var teamRanks  = ["1", "1", "1"]
    var teamNames = ["Southside Tigers", "Southside Tigers", "Southside Tigers"]
    var teamRecords = ["7-3", "7-3", "7-3",]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.tableView.tableHeaderView
        
        
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
