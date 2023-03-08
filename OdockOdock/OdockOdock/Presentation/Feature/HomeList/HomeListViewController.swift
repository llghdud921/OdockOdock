//
//  HomeListViewController.swift
//  OdockOdock
//
//  Created by 이호영 on 2023/03/06.
//

import UIKit

final class HomeListViewController: BaseViewController {

    let bookCollectionView = BookCollectionView()
    
    typealias BookDataSource = UICollectionViewDiffableDataSource<HomeBookSection, Book>
    var bookDataSource: BookDataSource? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureCollectionViewDataSource()
    }
    
    override func setupView() {
        super.setupView()
        
        view.addSubview(bookCollectionView)
    }
    
    override func setLayout() {
        super.setLayout()
        
        bookCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bookCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            bookCollectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bookCollectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bookCollectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

// MARK: - Book CollectionView

private extension HomeListViewController {
    
    func configureCollectionViewDataSource() {
        let BookCollectionViewRegistration = configureBookCollectionViewCellRegistration()
        bookDataSource = UICollectionViewDiffableDataSource<HomeBookSection, Book>(collectionView: bookCollectionView) {
            (collectionView: UICollectionView, indexPath: IndexPath, item: Book) -> UICollectionViewCell? in
            return collectionView.dequeueConfiguredReusableCell(using: BookCollectionViewRegistration, for: indexPath, item: item)
        }
        
        applySnapShotBookCollectionView()
    }
    
    func configureBookCollectionViewCellRegistration() -> UICollectionView.CellRegistration<BookCollectionViewCell, Book> {
        return UICollectionView.CellRegistration<BookCollectionViewCell, Book> { (cell, indexPath, item) in
            cell.label.text = item.text
            cell.bookImageView.image = item.image
        }
    }
    
    func applySnapShotBookCollectionView() {
        var snapshot = NSDiffableDataSourceSnapshot<HomeBookSection, Book>()
        snapshot.appendSections([.main])
        snapshot.appendItems([Book(text: "test", image: UIImage(systemName: "pencil") ?? UIImage()),
                              Book(text: "test", image: UIImage(systemName: "pencil") ?? UIImage()),
                              Book(text: "test", image: UIImage(systemName: "pencil") ?? UIImage()),
                              Book(text: "test", image: UIImage(systemName: "pencil") ?? UIImage()),
                              Book(text: "test", image: UIImage(systemName: "pencil") ?? UIImage()),
                              Book(text: "test", image: UIImage(systemName: "pencil") ?? UIImage()),
                              Book(text: "test", image: UIImage(systemName: "pencil") ?? UIImage())])
        bookDataSource?.apply(snapshot, animatingDifferences: false)
    }
}
