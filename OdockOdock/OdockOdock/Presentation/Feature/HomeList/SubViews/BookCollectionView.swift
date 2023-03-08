//
//  BookCollectionView.swift
//  OdockOdock
//
//  Created by 이호영 on 2023/03/06.
//

import UIKit

/// 책 정보를 나타내는 CollectionView
///
final class BookCollectionView: UICollectionView {
    
    convenience init() {
        self.init(frame: .zero, collectionViewLayout: BookCollectionViewCompositionalLayout())
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        
        setupView()
    }
    
    private func setupView() {
        backgroundColor = .clear
        showsHorizontalScrollIndicator = false
        allowsMultipleSelection = false
        register(BookCollectionViewCell.self,
                 forCellWithReuseIdentifier: BookCollectionViewCell.reuseIdentifier)
    }

}
