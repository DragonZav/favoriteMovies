//
//  DataBaseServices.swift
//  myFavMovies
//
//  Created by Chris Augg on 1/1/16.
//  Copyright © 2016 Auggie Doggie iOSware. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class DataBaseServices {
    
    var favoriteMovies = [FavoriteMovie]()
    
    
    func fetchAndSetResults() {
        let app = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = app.managedObjectContext
        let fetchRequest = NSFetchRequest(entityName: "FavoriteMovie")
        
        do {
            let results = try context.executeFetchRequest(fetchRequest)
            self.favoriteMovies = results as! [FavoriteMovie]
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }  
    
}