//
//  MovieViewController.swift
//  Boxotop
//
//  Created by Stéphane AZZOPARDI on 04/10/2018.
//  Copyright © 2018 Stéphane Azzopardi. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var pictureImageView: UIImageView!
    @IBOutlet weak var releaseDateLabel: UILabel!

    @IBOutlet weak var myReviewContainerView: UIView!

    @IBOutlet weak var synopsisContainerView: UIView!
    @IBOutlet weak var synopsisLabel: UILabel!

    @IBOutlet weak var castingCollectionView: UICollectionView!
    @IBOutlet weak var similarMoviewCollectionView: UICollectionView!

    var movieViewModel: MovieViewModel

    init(movieViewModel: MovieViewModel) {
        self.movieViewModel = movieViewModel

        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        prepareUI()
    }

    func prepareUI() {

        titleLabel.text = movieViewModel.movieTitle()
        synopsisLabel.text = movieViewModel.movieSynopsis()
    }
}
