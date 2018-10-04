//
//  MoviesViewController.swift
//  Boxotop
//
//  Created by Stéphane AZZOPARDI on 04/10/2018.
//  Copyright © 2018 Stéphane Azzopardi. All rights reserved.
//

import UIKit

class MoviesViewController: UIViewController {

    @IBOutlet weak var moviesTableView: UITableView!

    var moviesViewModel: MoviesViewModel = MoviesViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Box Office"
        moviesTableView.dataSource      = self
        moviesTableView.delegate        = self
        moviesTableView.tableFooterView = UIView()
        moviesTableView.register(UINib(nibName: "MovieTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "MovieTableViewCell")
    }
}

extension MoviesViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return moviesViewModel.sectionsCount()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesViewModel.cellsCount()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: MovieTableViewCell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell", for: indexPath) as? MovieTableViewCell else {
            return UITableViewCell()
        }

        cell.prepare(withViewModel: moviesViewModel.movieViewModel(forIndexPath: indexPath))

        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
}

extension MoviesViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        let movieViewModel = moviesViewModel.movieViewModel(forIndexPath: indexPath)
        let movieViewController: MovieViewController = MovieViewController(movieViewModel: movieViewModel)

        navigationController?.pushViewController(movieViewController, animated: true)
    }

    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
