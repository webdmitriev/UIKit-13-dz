//
//  Events.swift
//  UIKit - 13 - dz
//
//  Created by Олег Дмитриев on 31.08.2024.
//

import UIKit

class Events {
    
    private let inset: CGFloat = UIBuilder.inset
    private let headerSize = SizeHeaderFooter().setupHeaderSize()
    
    func createEventsSection() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 7, trailing: 0)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(312), heightDimension: .estimated(44))
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, repeatingSubitem: item, count: 3)
        group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16)
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: self.inset, bottom: 0, trailing: self.inset)
        
        section.boundarySupplementaryItems = [headerSize]
        
        return section
    }
    
}
