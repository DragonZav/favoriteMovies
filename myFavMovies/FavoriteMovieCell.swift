//
//  FavoriteMovieCell.swift
//  myFavMovies
//
//  Created by Chris Augg on 12/31/15.
//  Copyright © 2015 Auggie Doggie iOSware. All rights reserved.
//

import UIKit

class FavoriteMovieCell: UITableViewCell {

    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieLink: UIButton!
    @IBOutlet weak var movieDescription: UILabel!
    @IBOutlet weak var movieImg: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(movie: FavoriteMovie) {
        movieTitle.text = movie.title
        movieLink.setTitle(movie.link, forState: .Normal)
        movieDescription.text = movie.desc
        movieImg.image = movie.getMovieImage()        
        
    }

   
}
