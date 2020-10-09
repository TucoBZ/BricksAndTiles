//
//  SelectableTableViewCell.swift
//  Example
//
//  Created by Pedro M. Zaroni on 16/05/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import UIKit
import BricksAndTiles
#if canImport(PaintAndBrush)
import PaintAndBrush
#else
import ViewCodeHelper
#endif

class ExampleNameTableViewCell<ViewModel: RawRepresentable>: LabelCell, Reusable, ViewConfigurable
    where ViewModel.RawValue == String {
    typealias ViewModel = ViewModel

    // MARK: - Setup

    func configure(with model: ViewModel) {
        textLabel?.text = model.rawValue
        self.accessoryType = .disclosureIndicator
    }
}
