//
//  MoviesViewModel.swift
//  Boxotop
//
//  Created by Stéphane AZZOPARDI on 04/10/2018.
//  Copyright © 2018 Stéphane Azzopardi. All rights reserved.
//

import UIKit

class MoviesViewModel: NSObject {

    private var movies: [Movie]? {

        // TODO: remove before release
        let movie1 = Movie()
        movie1.title = "Forest Gump"
        movie1.releaseDate = Date()
        movie1.director = "Some Body"

        let movie2 = Movie()
        movie2.title = "Kill Bill"

        return [movie1, movie2]
    }

    private var filteredMovies: [Movie]?

    override init() {
        super.init()
        filteredMovies = movies
    }

    func sectionsCount() -> Int {
        return 1
    }

    func cellsCount() -> Int {
        return filteredMovies?.count ?? 0
    }

    func filterMoviesWithSearchText(_ searchText: String) {

        if searchText.isEmpty {
            filteredMovies = movies
        } else {
            filteredMovies = movies?.filter({( movie : Movie) -> Bool in
                return movie.title?.lowercased().contains(searchText.lowercased()) ?? false
            })
        }
    }

    func movieViewModel(forIndexPath indexPath: IndexPath) -> MovieViewModel {

        guard let movie = filteredMovies?[indexPath.row] else {
            return MovieViewModel(movie: Movie())
        }

        return MovieViewModel(movie: movie)
    }
}
