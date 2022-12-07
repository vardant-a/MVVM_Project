//
//  CustomTableViewCell.swift
//  MVVM_Project
//
//  Created by Aleksei on 07.12.2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    static let cellID = "CustomCellID"
    
    // MARK: - Private Properties
    var name = UILabel()
    var secondName = UILabel()
    var age = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .brown
        addElementsForCell(name, secondName, age)
        addConstrains()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElementsForCell(_ views: UIView...) {
        views.forEach { view in
            contentView.addSubview(view)
        }
    }
}

extension CustomTableViewCell {
    private func addConstrains() {
        name.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            name.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            name.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16)
        ])
        
        secondName.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            secondName.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            secondName.leadingAnchor.constraint(equalTo: name.trailingAnchor, constant: 10)
        ])
        
        age.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            age.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            age.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ])
    }
}
