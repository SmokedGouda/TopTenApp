//
//  VideoGameListController.swift
//  TopTenApp
//
//  Created by Craig Carlson on 10/6/15.
//  Copyright © 2015 Craig Carlson. All rights reserved.
//

import UIKit

class VideoGameListController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let videoGames = ["World of Warcraft", "Star Wars: The Old Republic"]
    let videoGameTableIdentifier = "VideoGameTableIdentifier"
    
    //This function must be inplemented in every table.
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videoGames.count
    }
    
    //This function must also be implemented in every table.
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:
        NSIndexPath) -> UITableViewCell {
            var cell = tableView.dequeueReusableCellWithIdentifier(videoGameTableIdentifier) as UITableViewCell!
            if(cell == nil) {
                cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: videoGameTableIdentifier)
            }
            cell.textLabel?.text = videoGames[indexPath.row]
            return cell
    }


   
}
