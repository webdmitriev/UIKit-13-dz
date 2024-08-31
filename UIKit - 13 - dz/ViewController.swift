//
//  ViewController.swift
//  UIKit - 13 - dz
//
//  Created by Олег Дмитриев on 28.08.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let inset: CGFloat = UIBuilder.inset
    
    // 1. create collectionSection
    private lazy var collectionView: UICollectionView = {
        $0.backgroundColor = .appGray
        $0.dataSource = self
        
        // Header + Footer
        $0.register(SectionHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: SectionHeader.reuseID)
        $0.register(SectionFooter.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: SectionFooter.reuseID)
        
        // News
        $0.register(NewsCell.self, forCellWithReuseIdentifier: NewsCell.reuseID)
        
        // Events
        $0.register(EventsCell.self, forCellWithReuseIdentifier: EventsCell.reuseID)
        
        // Users
        $0.register(UsersCell.self, forCellWithReuseIdentifier: UsersCell.reuseID)
        
        $0.delegate = self
        return $0
    }(UICollectionView(frame: view.frame, collectionViewLayout: createLayout()))
    
    // 2. create createLayout
    private func createLayout() -> UICollectionViewCompositionalLayout {
        UICollectionViewCompositionalLayout { section, _ in
            switch section {
                case 0: return self.newsSection
                case 1: return self.eventsSection
                case 2: return self.usersSection
                default: return self.newsSection
            }
        }
    }
    
    // 3. News Section
    private lazy var newsSection = News().createNewsSection()
    private lazy var eventsSection = Events().createEventsSection()
    private lazy var usersSection = Users().createUsersSection()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(collectionView)
    }


}
