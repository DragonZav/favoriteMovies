//
//  ViewController.swift
//  myFavMovies
//
//  Created by Chris Augg on 12/29/15.
//  Copyright © 2015 Auggie Doggie iOSware. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // Background: The Majestic Theatre
    // Author: Dan Huntley
    // Website: flickr.com
    
    // Logo : Sepia Film Strip clip art
    // Author:  www.openclipart.org
    
    
    // Info entry VC Background: Movie Night
    // Author: Ginny
    // Website: flickr.com
    
    // Description VC Background: Theatre
    // Author: Bombman
    // Website: flickr.com
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var favoriteMovies = [FavoriteMovie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        let logo = UIImage(named: "filmStripSmall.png")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
        
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("FavoriteMovieCell") as? FavoriteMovieCell {
            let movie = favoriteMovies[indexPath.row]
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
        return favoriteMovies.count
    }

}

