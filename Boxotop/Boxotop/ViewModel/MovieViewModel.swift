//
//  MovieViewModel.swift
//  Boxotop
//
//  Created by Stéphane AZZOPARDI on 04/10/2018.
//  Copyright © 2018 Stéphane Azzopardi. All rights reserved.
//

import UIKit

class MovieViewModel: NSObject {

    private var movie: Movie

    init(movie: Movie) {
        self.movie = movie
    }

    func movieTitle() -> String {
        return movie.title ?? ""
    }
}
