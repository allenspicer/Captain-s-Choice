//
//  PlayersViewController.swift
//  Captain's Choice
//
//  Created by Allen Spicer on 5/31/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit

class PlayersViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.tableView.tableHeaderView
        
        
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PlayersTableViewCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = "Kramer"
        
        // 3
        // Configure the cell...
//        switch (indexPath.section) {
//        case 0:
//            cell.textLabel?.text = countriesinEurope[indexPath.row]
//        case 1:
//            cell.textLabel?.text = countriesinAsia[indexPath.row]
//        case 2:
//            cell.textLabel?.text = countriesInSouthAmerica[indexPath.row]
//        //return sectionHeaderView
//        default:
//            cell.textLabel?.text = "Other"
//        }
//        
        return cell
    }


}
