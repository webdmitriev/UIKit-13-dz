//
//  SizeHeaderFooter.swift
//  UIKit - 13 - dz
//
//  Created by Олег Дмитриев on 31.08.2024.
//

import UIKit

class SizeHeaderFooter {
    
    func setupHeaderSize() -> NSCollectionLayoutBoundarySupplementaryItem {
        .init(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(64)),
              elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
    }
    func setupFooterSize() -> NSCollectionLayoutBoundarySupplementaryItem {
        .init(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(64)),
              elementKind: UICollectionView.elementKindSectionFooter, alignment: .bottom)
    }
    
}
