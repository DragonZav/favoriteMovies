//
//  DetailsVC.swift
//  myFavMovies
//
//  Created by Chris Augg on 1/1/16.
//  Copyright © 2016 Auggie Doggie iOSware. All rights reserved.
//

import UIKit
import CoreData

class DetailsVC: UIViewController {

    // Description VC Background: Theatre
    // Author: Bombman
    // Website: flickr.com
    
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDescription: UILabel!
    @IBOutlet weak var movieLink: UILabel!
    @IBOutlet weak var moviePlot: UILabel!
    @IBOutlet weak var movieImg: UIImageView!
    
    let dbs = DataBaseServices()
    var numberOfCell = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        dbs.fetchAndSetResults()
        
        movieTitle.text = dbs.favoriteMovies[numberOfCell].title
        movieDescription.text = dbs.favoriteMovies[numberOfCell].desc
        movieLink.text = dbs.favoriteMovies[numberOfCell].link
        moviePlot.text = dbs.favoriteMovies[numberOfCell].plot
        movieImg.image = dbs.favoriteMovies[numberOfCell].getMovieImage()
        
    }
}
