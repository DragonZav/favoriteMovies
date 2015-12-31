//
//  FavoriteMovie.swift
//  myFavMovies
//
//  Created by Chris Augg on 12/31/15.
//  Copyright © 2015 Auggie Doggie iOSware. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class FavoriteMovie: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    
    func setMovieImage(img: UIImage) {
        let data = UIImagePNGRepresentation(img)
        self.image = data
    }
    
    func getMovieImage() -> UIImage {
        let img = UIImage(data: self.image!)!
        return img
    }
}
