//
//  Movie.swift
//  Boxotop
//
//  Created by Stéphane AZZOPARDI on 04/10/2018.
//  Copyright © 2018 Stéphane Azzopardi. All rights reserved.
//

import UIKit

class Movie: NSObject {

    var title: String?
    var releaseDate: Date?
    var criticsRate: Float?
    var audienceRate: Float?
    var synopsis: String?
    var casting: Actor?
    var similarMovies: [Movie]?
    var posterURL: URL?
}
