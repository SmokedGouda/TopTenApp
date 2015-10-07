//
//  SongListController.swift
//  TopTenApp
//
//  Created by Craig Carlson on 10/6/15.
//  Copyright © 2015 Craig Carlson. All rights reserved.
//

import UIKit

class SongListController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    let songs = ["Happy", "What Makes A Good Man", "Mug Shot", "Lonely Boy", "Radioactive", "I can see clearly now", "Blame it on me", "Won't Get Fooled Again", "Rock with You", "Battlecry"]
    let songTableIdentifier = "SongTableIdentifier"
    
    //This function must be inplemented in every table.
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    //This function must also be implemented in every table.
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:
        NSIndexPath) -> UITableViewCell {
            var cell = tableView.dequeueReusableCellWithIdentifier(songTableIdentifier) as UITableViewCell!
            if(cell == nil) {
                cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: songTableIdentifier)
            }
            cell.textLabel?.text = songs[indexPath.row]
            return cell
    }
}
