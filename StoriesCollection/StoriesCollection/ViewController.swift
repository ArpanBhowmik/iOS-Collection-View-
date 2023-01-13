//
//  ViewController.swift
//  StoriesCollection
//
//  Created by Arpan Bhowmik on 11/1/23.
//

import UIKit

class ViewController: UIViewController {
    private var collectionView: UICollectionView?
    
    private let models = ["arpan", "ball1", "ball2", "ball3", "arpan", "ball1", "ball2", "ball3", "arpan", "ball1", "ball2", "ball3"]
    
    fileprivate func extractedFunc() {
        collectionView?.showsHorizontalScrollIndicator = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 150, height: 150)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        extractedFunc()
        collectionView?.delegate = self
        collectionView?.dataSource = self
        
        collectionView?.register(CircleCollectionViewCell.self, forCellWithReuseIdentifier: CircleCollectionViewCell.identifier)
        
        view.addSubview(collectionView!)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView?.frame = CGRect(x: 0, y: 100, width: view.frame.size.width, height: 150)
    }
}

extension ViewController: UICollectionViewDelegate {
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CircleCollectionViewCell.identifier, for: indexPath) as! CircleCollectionViewCell
        cell.configure(with: models[indexPath.row])
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
}

