//
//  ButtonTableViewCell.swift
//  MVVM_Project
//
//  Created by Aleksei on 07.12.2022.
//

import UIKit

final class ButtonTableViewCell: UITableViewCell {
    
    static let cellID = "ButtonTableViewCell"
    
    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        
        button.setTitle("Test", for: .normal)
        button.backgroundColor = .systemGray3
        button.setTitleColor(.red, for: .normal)
        button.layer.cornerRadius = 8
        
        button.addTarget(target, action: #selector(testAction), for: .touchUpInside)
        
        return button
    }()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.button = button
        contentView.addSubview(button)
        setConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ButtonTableViewCell {
    @objc func testAction() {
        print("Нажатие кнопки")
    }
}

extension ButtonTableViewCell {
    private func setConstrains() {
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            button.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            button.topAnchor.constraint(equalTo: contentView.topAnchor),
            button.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            button.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
}
