//
//  MoviesViewModel.swift
//  Boxotop
//
//  Created by Stéphane AZZOPARDI on 04/10/2018.
//  Copyright © 2018 Stéphane Azzopardi. All rights reserved.
//

import UIKit

class MoviesViewModel: NSObject {

    private var moviesViewModels: [MovieViewModel]? {

        // TODO: remove before release
        let movie1 = Movie()
        movie1.title = "Forest Gump"
        movie1.releaseDate = Date()
        movie1.director = "Some Body"
        let moviewVM1 = MovieViewModel(movie: movie1)

        let movie2 = Movie()
        movie2.title = "Kill Bill"
        let moviewVM2 = MovieViewModel(movie: movie2)

        return [moviewVM1, moviewVM2]
    }
    
    func sectionsCount() -> Int {
        return 1
    }

    func cellsCount() -> Int {
        return moviesViewModels?.count ?? 0
    }

    func movieViewModel(forIndexPath indexPath: IndexPath) -> MovieViewModel {

        guard let movieViewModel = moviesViewModels?[indexPath.row] else {
            return MovieViewModel(movie: Movie())
        }

        return movieViewModel
    }
}
