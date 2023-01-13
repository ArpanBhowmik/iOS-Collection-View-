//
//  HeaderCollectionReusableView.swift
//  HeaderFooter
//
//  Created by Arpan Bhowmik on 11/1/23.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
    static let identifier = "HeaderCollectionReusableView"
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "Header"
        label.textColor = .label
        label.textAlignment = .center
        return label
    }()
    
    func configure() {
        backgroundColor = .systemGreen
        addSubview(label)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        label.frame = bounds
    }
}

class FooterCollectionReusableView: UICollectionReusableView {
    static let identifier = "FooterCollectionReusableView"
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "Footer"
        label.textColor = .label
        label.textAlignment = .center
        return label
    }()
    
    func configure() {
        backgroundColor = .systemRed
        addSubview(label)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        label.frame = bounds
    }
}
