//
//  RoundButton.swift
//  myFavMovies
//
//  Created by Chris Augg on 12/30/15.
//  Copyright © 2015 Auggie Doggie iOSware. All rights reserved.
//

import UIKit

class RoundButton: UIButton {

    override func awakeFromNib() {
        layer.cornerRadius = 5.0
        backgroundColor = UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.5)
        setTitleColor(UIColor.whiteColor(), forState: .Normal)
    }
}
