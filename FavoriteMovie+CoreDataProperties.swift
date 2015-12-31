//
//  FavoriteMovie+CoreDataProperties.swift
//  myFavMovies
//
//  Created by Chris Augg on 12/31/15.
//  Copyright © 2015 Auggie Doggie iOSware. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension FavoriteMovie {

    @NSManaged var image: NSData?
    @NSManaged var title: String?
    @NSManaged var desc: String?
    @NSManaged var plot: String?
    @NSManaged var link: String?

}
