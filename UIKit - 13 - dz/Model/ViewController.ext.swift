//
//  ViewController.ext.swift
//  UIKit - 13 - dz
//
//  Created by Олег Дмитриев on 31.08.2024.
//

import UIKit

extension ViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        CollectionSection.mockData().count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        CollectionSection.mockData()[section].items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let item = CollectionSection.mockData()[indexPath.section].items[indexPath.item]
        
        switch indexPath.section {
            case 0:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NewsCell.reuseID, for: indexPath) as! NewsCell
                cell.setupCell(item: item)
                return cell
            case 1:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: EventsCell.reuseID, for: indexPath) as! EventsCell
                cell.setupCell(item: item)
                return cell
            case 2:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: UsersCell.reuseID, for: indexPath) as! UsersCell
                cell.setupCell(item: item)
                return cell
            default:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NewsCell.reuseID, for: indexPath) as! NewsCell
                cell.setupCell(item: item)
                return cell
        }
    }
    
    
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let item = CollectionSection.mockData()[indexPath.section]
        
        switch kind {
            case UICollectionView.elementKindSectionHeader:
                let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: SectionHeader.reuseID, for: indexPath) as! SectionHeader
                
                switch indexPath.section {
                    case 0: header.setupCell(text: item.header, type: .news)
                    case 1: header.setupCell(text: item.header, type: .event)
                    case 2: header.setupCell(text: item.header, type: .users)
                    default: header.setupCell(text: item.header, type: .news)
                }
            
                return header
            
            default:
                let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: SectionFooter.reuseID, for: indexPath) as! SectionFooter
                footer.setupCell(text: item.footer ?? "", type: .news)
                return footer
        }
        
    }
}
