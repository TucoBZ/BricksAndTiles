//
//  SecondStaticCell.swift
//  Example
//
//  Created by Pedro M. Zaroni on 27/06/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import UIKit
import BricksAndTiles
#if canImport(PaintAndBrush)
import PaintAndBrush
#else
import ViewCodeHelper
#endif

class SecondStaticCell: UITableViewCell, CellConfigurable {
    typealias ViewModel = String

    func configure(with model: String) {
        textLabel?.text = model
        textLabel?.font = .systemFont(ofSize: 20)
        if #available(iOS 13.0, *) {
            backgroundColor = .groupTableViewBackground
        }
    }
}
