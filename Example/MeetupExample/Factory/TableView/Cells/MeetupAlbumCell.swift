//
//  MeetupAlbumCell.swift
//  Example
//
//  Created by Pedro M. Zaroni on 05/09/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import UIKit
#if canImport(PaintAndBrush)
import PaintAndBrush
#else
import ViewCodeHelper
#endif

final class MeetupAlbumCell: UITableViewCell, Reusable {
    func configure(with model: Album) {
        textLabel?.text = model.name
        textLabel?.font = .systemFont(ofSize: 30)

        detailTextLabel?.text = model.band
        detailTextLabel?.font = .systemFont(ofSize: 16)

        imageView?.image = UIImage(named: model.imageName)
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
