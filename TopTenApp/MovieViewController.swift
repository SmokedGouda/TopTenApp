//
//  MovieViewController.swift
//  TopTenApp
//
//  Created by Craig Carlson on 10/6/15.
//  Copyright © 2015 Craig Carlson. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let movies = ["Classic Star Wars Triology", "The Lord of the Rings Trilogy", "The Big Lebowski", "A Few Good Men", "Pulp Fiction", "Get Shorty", "Rounders", "Guardians of the Galaxy", "Inception", "The Shawshank Redemption"]
    let movieTableIdentifier = "MovieTableIdentifier"
    
    //This function must be inplemented in every table.
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    //This function must also be implemented in every table.
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:
        NSIndexPath) -> UITableViewCell {
            var cell = tableView.dequeueReusableCellWithIdentifier(movieTableIdentifier) as UITableViewCell!
            if(cell == nil) {
                cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: movieTableIdentifier)
            }
            cell.textLabel?.text = movies[indexPath.row]
            return cell
    }


    
}
