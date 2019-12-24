//
//  HealthTableViewCell.swift
//  HealthCells
//
//  Created by Brett Markowitz on 12/23/19.
//  Copyright © 2019 Brett Markowitz. All rights reserved.
//

import UIKit

class HealthTableViewCell: UITableViewCell {
    
    var headerStackView: UIStackView!
    
    let configuration = UIImage.SymbolConfiguration(scale: .small)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        accessoryType = .disclosureIndicator
        
        setUpCell()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setUpCell() {
        let titleIcon = UIImageView(image: UIImage(systemName: "flame.fill", withConfiguration: configuration))
        titleIcon.tintColor = .systemRed
        titleIcon.translatesAutoresizingMaskIntoConstraints = false
        titleIcon.widthAnchor.constraint(equalToConstant: 20).isActive = true
        titleIcon.heightAnchor.constraint(equalToConstant: 20).isActive = true
        titleIcon.contentMode = .scaleAspectFit
        
        let titleLabel = UILabel()
        headerStackView = UIStackView()
        titleLabel.attributedText = NSAttributedString(string: "Test Header", attributes: [.foregroundColor: UIColor.systemRed, .font: UIFont.systemFont(ofSize: 16, weight: .semibold)])
        titleLabel.sizeToFit()
        
        headerStackView.translatesAutoresizingMaskIntoConstraints = false
        headerStackView.axis = .horizontal
        headerStackView.alignment = .leading
        headerStackView.spacing = 1
        headerStackView.addArrangedSubview(titleIcon)
        headerStackView.addArrangedSubview(titleLabel)
         
        contentView.addSubview(headerStackView)
        
        NSLayoutConstraint.activate([
            headerStackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            headerStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            headerStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            headerStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10)
        ])
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}
