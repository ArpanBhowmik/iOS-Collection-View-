//
//  ViewController.swift
//  CustomCellCollectionView
//
//  Created by Arpan Bhowmik on 11/1/23.
//

import UIKit

class ViewController: UIViewController {
    private var collectionView: UICollectionView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 1
        layout.minimumInteritemSpacing = 1
        layout.itemSize = CGSize(width: view.frame.width / 3 - 2, height: view.frame.width / 3 - 2)
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView?.delegate = self
        collectionView?.dataSource = self
        
        collectionView?.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
        
        view.addSubview(collectionView!)
        collectionView?.frame = view.bounds
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as! CustomCollectionViewCell
        cell.configure(with: "Custom \(indexPath.row)")
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
}


