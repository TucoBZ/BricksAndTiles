//
//  MeetupSongCellBuilder.swift
//  Example
//
//  Created by Pedro M. Zaroni on 05/09/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import UIKit
import BricksAndTiles
#if canImport(PaintAndBrush)
import PaintAndBrush
#else
import ViewCodeHelper
#endif

struct MeetupSongCellBuilder: TableViewCellBuilder {

    var model: Song

    var cellHeight: CGFloat {
        UITableView.automaticDimension
    }

    func registerCellIdentifier(in tableView: UITableView) {
        tableView.register(MeetupSongCell.self)
    }

    func tableViewCell(at indexPath: IndexPath, on tableView: UITableView) -> UITableViewCell {
        let cell: MeetupSongCell = tableView.dequeueReusableCell(for: indexPath)
        cell.configure(with: model)
        return cell
    }

    func tableViewShouldSelectCell(_ tableView: UITableView) -> Bool {
        return false
    }
}
