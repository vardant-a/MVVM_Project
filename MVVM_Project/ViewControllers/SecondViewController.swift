//
//  SecondViewController.swift
//  MVVM_Project
//
//  Created by Aleksei on 07.12.2022.
//

import UIKit



final class SecondViewController: UIViewController {

    var viewModel: TableViewViewModelType?
    
    // MARK: - Private lazy properties
    
    private lazy var customTableView: UITableView = {
       let table = UITableView()
        table.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.cellID)
        return table
    }()
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        view.addSubview(customTableView)
        customTableView.delegate = self
        customTableView.dataSource = self
        
        viewModel = SecondViewModel()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        customTableView.frame = view.bounds
    }
}

extension SecondViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.numberOfRows() ?? 0
    }
    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.cellID, for: indexPath) as? CustomTableViewCell
//
//        guard let tableViewCell = cell,
//                let viewModel = viewModel else { return UITableViewCell() }
//
//        let profile = viewModel.profiles[indexPath.row]
//        
//        tableViewCell.name.text = profile.name
//        tableViewCell.secondName.text = profile.secondName
//        tableViewCell.age.text = "\(profile.age)"
//
//        return tableViewCell
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.cellID, for: indexPath) as? CustomTableViewCell
        
        guard let tableViewCell = cell, let viewModel = viewModel else {
            return UITableViewCell()
        }
        
        let cellViewModel = viewModel.cellViewModel(forIndexPath: indexPath)
        tableViewCell.viewModel = cellViewModel
        
        return tableViewCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

//    // MARK: Set constrains for all view elements
//extension SecondViewController {
//    private func setConstrains() {
//        customTableView.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//            customTableView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
//            customTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            customTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            customTableView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor)
//        ])
//    }
//}
