//
//  MovieTableViewCell.swift
//  Boxotop
//
//  Created by Stéphane AZZOPARDI on 04/10/2018.
//  Copyright © 2018 Stéphane Azzopardi. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var directorLabel: UILabel!
    @IBOutlet weak var actorsLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
