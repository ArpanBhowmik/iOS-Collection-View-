//
//  MyCollectionViewCell.swift
//  TableViewWithCollectionViewCell
//
//  Created by Arpan Bhowmik on 11/1/23.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    static let identifier = "MyCollectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(with model: Model) {
        imageView.image = UIImage(named: model.imageName)
        label.text = model.text
        imageView.contentMode = .scaleAspectFill
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }
}
