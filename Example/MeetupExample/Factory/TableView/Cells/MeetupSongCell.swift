//
//  MeetupSongCell.swift
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

final class MeetupSongCell: UITableViewCell, Reusable {
    func configure(with model: Song) {
        textLabel?.text = model.name
        textLabel?.font = .systemFont(ofSize: 30)
    }
}
