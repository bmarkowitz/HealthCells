//
//  CellHeaderStackView.swift
//  HealthCells
//
//  Created by Brett Markowitz on 12/23/19.
//  Copyright © 2019 Brett Markowitz. All rights reserved.
//

import UIKit

class CellHeaderStackView: UIStackView {
    var titleImageView: UIImageView!
    var titleLabel: UILabel!

    init(imageName: String, title: String) {
        super.init(frame: .zero)
        setUpView(with: imageName, title)
    }
    
    func setUpView(with imageName: String, _ title: String) {
        titleImageView = UIImageView(image: UIImage(systemName: imageName))
        titleImageView.tintColor = .systemRed
        titleImageView.translatesAutoresizingMaskIntoConstraints = false
        titleImageView.widthAnchor.constraint(equalToConstant: 18).isActive = true
        titleImageView.heightAnchor.constraint(equalToConstant: 18).isActive = true
        titleImageView.contentMode = .scaleAspectFit
        
        titleLabel = UILabel()
        titleLabel.attributedText = NSAttributedString(string: title, attributes: [.foregroundColor: UIColor.systemRed, .font: UIFont.systemFont(ofSize: 16, weight: .semibold)])
        titleLabel.sizeToFit()
        
        axis = .horizontal
        alignment = .center
        spacing = 3
        addArrangedSubview(titleImageView)
        addArrangedSubview(titleLabel)
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
}
