//
//  HorizontalListFactory.swift
//  Example
//
//  Created by Pedro M. Zaroni on 05/07/20.
//  Copyright © 2020 Dextra. All rights reserved.
//

import TableViewFactory
import ViewCodeHelper

final class HorizontalListFactory {
    func make() -> [CollectionViewSection] {
        let section = StaticCollectionSection(
            cellBuilders: cellBuilders()
        )
        return [section]
    }

    func cellBuilders() -> [CollectionViewCellBuilder] {
        return (0...2).map { _ in HorizontalCellBuilder() }
    }
}

final class CollectionCell: UICollectionViewCell, Reusable {

    func configure(color: UIColor) {
        backgroundColor = color
    }
}

final class HorizontalCellHeader: UICollectionReusableView, Reusable {

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .blue
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension UICollectionView {
    func dequeueReusableSupplementaryView<T: UICollectionReusableView>(
        ofKind kind: String,
        for indexPath: IndexPath
    ) -> T where T: Reusable {
        let supplementaryView = dequeueReusableSupplementaryView(
            ofKind: kind,
            withReuseIdentifier: T.identifier,
            for: indexPath
        )
        guard let view = supplementaryView as? T else { return T() }
        return view
    }

    func register<T: UICollectionReusableView>(_: T.Type, forSupplementaryViewOfKind kind: String) where T: Reusable {
        register(T.self, forSupplementaryViewOfKind: kind, withReuseIdentifier: T.identifier)
    }
}

final class HorizontalCellBuilder: CollectionViewCellBuilder {

    var cellSize: CGSize {
        CGSize(width: 300, height: 500)
    }

    func registerCellIdentifier(in collectionView: UICollectionView) {
        collectionView.register(CollectionCell.self)
        collectionView.register(
            HorizontalCellHeader.self,
            forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader
        )
    }

    func collectionViewCell(at indexPath: IndexPath, on collectionView: UICollectionView) -> UICollectionViewCell {
        let cell: CollectionCell = collectionView.dequeueReusableCell(for: indexPath)
        cell.configure(color: .green)
        return cell
    }

    func collectionViewSupplementaryView(kind: String,
                                         at indexPath: IndexPath,
                                         on collectionView: UICollectionView) -> UICollectionReusableView {
        let view: HorizontalCellHeader = collectionView.dequeueReusableSupplementaryView(
            ofKind: kind,
            for: indexPath
        )
        return view
    }

    func collectionViewDidSelectCell(_ collectionView: UICollectionView,
                                     at indexPath: IndexPath) {
        print("did tap cell at \(indexPath)")
    }
}
