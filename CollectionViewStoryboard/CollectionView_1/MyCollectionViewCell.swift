//
//  MyCollectionViewCell.swift
//  CollectionView_1
//
//  Created by Arpan Bhowmik on 11/1/23.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
    static let identifier = "MyCollectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(with image: UIImage) {
        backgroundColor = .systemTeal
        imageView.image = image
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }
}
