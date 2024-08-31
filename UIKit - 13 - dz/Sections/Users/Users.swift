//
//  Users.swift
//  UIKit - 13 - dz
//
//  Created by Олег Дмитриев on 31.08.2024.
//

import UIKit

class Users {
    
    private let inset: CGFloat = UIBuilder.inset
    private let headerSize = SizeHeaderFooter().setupHeaderSize()
    
    func createUsersSection() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(193), heightDimension: .absolute(173))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, repeatingSubitem: item, count: 1)
        group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16)
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPagingCentered
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: self.inset, bottom: 0, trailing: self.inset)
        
        section.boundarySupplementaryItems = [headerSize]
        
        return section
    }
    
}
