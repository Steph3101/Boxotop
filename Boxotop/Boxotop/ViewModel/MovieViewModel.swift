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
    private let emptyField = "-"

    init(movie: Movie) {
        self.movie = movie
    }

    func movieTitle() -> String {
        return movie.title ?? emptyField
    }

    func movieDirector() -> String {
        return movie.director ?? emptyField
    }

    func movieSynopsis() -> String {
        return movie.synopsis ?? emptyField
    }

    func movieActors() -> String {
        let actorsNames = movie.actors?.map({ (actor: Actor) -> String in
            var actorFullName = actor.firstname ?? ""
            actorFullName = actorFullName + " " + (actor.lastname ?? "")

            return actorFullName
        })

        return actorsNames?.joined(separator: ", ") ?? emptyField
    }

    func movieReleaseDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none

        guard let date = movie.releaseDate else {
            return emptyField
        }

        return dateFormatter.string(from: date)
    }
}
