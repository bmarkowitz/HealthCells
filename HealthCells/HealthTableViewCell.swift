//
//  HealthTableViewCell.swift
//  HealthCells
//
//  Created by Brett Markowitz on 12/23/19.
//  Copyright © 2019 Brett Markowitz. All rights reserved.
//

import UIKit

class HealthTableViewCell: UITableViewCell {
    
    var headerStackView: CellHeaderStackView!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        accessoryType = .disclosureIndicator
        
        setUpCell()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setUpCell() {
        headerStackView = CellHeaderStackView(imageName: "flame.fill", title: "Test Header")
        
        headerStackView.translatesAutoresizingMaskIntoConstraints = false
         
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
