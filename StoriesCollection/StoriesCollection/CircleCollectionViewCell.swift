//
//  CircleCollectionViewCell.swift
//  StoriesCollection
//
//  Created by Arpan Bhowmik on 11/1/23.
//

import UIKit

class CircleCollectionViewCell: UICollectionViewCell {
    static let identifier = "CircleCollectionViewCell"
    
    private let myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 150.0 / 2.0 //height / 2
        imageView.layer.borderWidth = 2
        imageView.layer.borderColor = UIColor.link.cgColor
        
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(myImageView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        myImageView.frame = contentView.bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with imageName: String) {
        myImageView.image = UIImage(named: imageName)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        myImageView.image = nil
    }
}
