//
//  BookCollectionViewCompositionalLayout.swift
//  OdockOdock
//
//  Created by 이호영 on 2023/03/06.
//

import UIKit

/// 책 정보를 나타내는 CollectionView CompositionalLayout
/// 
final class BookCollectionViewCompositionalLayout: UICollectionViewCompositionalLayout {
    
    convenience init() {
        /// item
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                              heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        /// Group
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                               heightDimension: .fractionalWidth(0.25))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 2)
        let spacing = CGFloat(10)
        group.interItemSpacing = .fixed(spacing)
        
        /// Section
        let section = NSCollectionLayoutSection(group: group)
        section.interGroupSpacing = spacing
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 12)
        
        self.init(section: section)
    }
    
    override init(section: NSCollectionLayoutSection) {
        super.init(section: section)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
