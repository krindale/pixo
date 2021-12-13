//
//  ViewController.swift
//  pixo
//
//  Created by 이해상 on 2021/12/13.
//

import UIKit

final class AlbumViewController: UIViewController {
    
    var collectionView: UICollectionView =  {
        
        var collectionView = UICollectionView(frame: .zero,
                                              collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.backgroundColor = .white
        collectionView.register(AlbumCell.self, forCellWithReuseIdentifier: AlbumCell.identifier)
        return collectionView
    }()
    
    var isLine = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
        view.addSubview(collectionView)
        self.setCollectionViewUI()
    }
    
    // Set CollectionView UI
    private func setCollectionViewUI() {
        
        self.collectionView
            .translatesAutoresizingMaskIntoConstraints = false
        self.collectionView
            .topAnchor
            .constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        self.collectionView
            .leadingAnchor
            .constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        self.collectionView
            .trailingAnchor
            .constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        self.collectionView
            .bottomAnchor
            .constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
    
}

extension AlbumViewController: UICollectionViewDataSource {
    // UICollectionView DataSource
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // 1
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AlbumCell.identifier,
                                                            for: indexPath) as? AlbumCell else {
            return UICollectionViewCell()
        }
        
        cell.backgroundColor = .red
        
        return cell
    }
    
}

extension AlbumViewController: UICollectionViewDelegate {
    // UICollectionView Delegaate
    func collectionView(_ collectionView: UICollectionView,
                        didSelectItemAt indexPath: IndexPath) {
        self.isLine = !isLine

        self.collectionView.performBatchUpdates({
            self.collectionView.reloadData()
        }, completion: nil)
    }
}


// MARK: - Collection View Flow Layout Delegate
extension AlbumViewController: UICollectionViewDelegateFlowLayout {
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if self.isLine {
            return CGSize(width: 100.0, height: 100.0)
        } else {
            return CGSize(width: UIScreen.main.bounds.width, height: 100.0)
        }
        
    }
}
