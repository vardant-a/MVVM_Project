//
//  ThirdViewController.swift
//  MVVM_Project
//
//  Created by Aleksei on 07.12.2022.
//

import UIKit

final class ThirdViewController: UIViewController {
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(ButtonTableViewCell.self, forCellReuseIdentifier: ButtonTableViewCell.cellID)
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
        view.addSubview(tableView)
//        tableView.frame = view.bounds
        tableView.delegate = self
        tableView.dataSource = self
        setConstrains()
    }
}

extension ThirdViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ButtonTableViewCell.cellID, for: indexPath) as? ButtonTableViewCell
        guard let tableViewCell = cell else { return UITableViewCell() }
        return tableViewCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}


extension ThirdViewController {
    private func setConstrains() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
        ])
    }
}
