//
//  ViewController.swift
//  myFavMovies
//
//  Created by Chris Augg on 12/29/15.
//  Copyright © 2015 Auggie Doggie iOSware. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // Background: The Majestic Theatre
    // Author: Dan Huntley
    // Website: flickr.com
    
    // Logo : Sepia Film Strip clip art
    // Author:  www.openclipart.org
    
    @IBOutlet weak var tableView: UITableView!
    
    let dbs = DataBaseServices()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        let logo = UIImage(named: "filmStripSmall.png")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
        
    }
    
    override func viewDidAppear(animated: Bool) {
        dbs.fetchAndSetResults()
        tableView.reloadData()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("FavoriteMovieCell") as? FavoriteMovieCell {
            let movie = dbs.favoriteMovies[indexPath.row]
            cell.configureCell(movie)
            return cell
        } else {
            return FavoriteMovieCell()
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dbs.favoriteMovies.count
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if let cell = sender as? UITableViewCell {
            let i = tableView.indexPathForCell(cell)!.row
            if segue.identifier == "toDetails" {
                let vc = segue.destinationViewController as! DetailsVC
                
                vc.numberOfCell = i
                
            }
        }
    }
}
