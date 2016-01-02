//
//  SaveFavoriteMovieVC.swift
//  myFavMovies
//
//  Created by Chris Augg on 1/1/16.
//  Copyright © 2016 Auggie Doggie iOSware. All rights reserved.
//

import UIKit
import CoreData

class SaveFavoriteMovieVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    // Info entry VC Background: Movie Night
    // Author: Ginny
    // Website: flickr.com   
    
    
    @IBOutlet weak var movieTitle: UITextField!
    @IBOutlet weak var movieDescription: UITextField!
    @IBOutlet weak var movieLink: UITextField!
    @IBOutlet weak var moviePlot: UITextField!
    @IBOutlet weak var movieImg: UIImageView!
   
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        movieImg.layer.cornerRadius = 5.0
        movieImg.clipsToBounds = true
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        movieImg.image = image
    }
    
    @IBAction func saveImage(sender: AnyObject!) {
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func saveMovie(sender: AnyObject!) {
        if let title = movieTitle.text where title != "" {
            
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("FavoriteMovie", inManagedObjectContext: context)!
            let movie = FavoriteMovie(entity: entity, insertIntoManagedObjectContext: context)
            
            movie.title = title
            movie.desc = movieDescription.text
            movie.link = movieLink.text
            movie.plot = moviePlot.text
            movie.setMovieImage(movieImg.image!)
            
            context.insertObject(movie)
            
            do {
                try context.save()
            } catch {
                print("Could not save movie")
            }
            
            self.navigationController?.popViewControllerAnimated(true)
            
            
        }
    }
    

}
