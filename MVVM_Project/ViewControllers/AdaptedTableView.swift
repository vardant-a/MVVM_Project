//
//  AdaptedTableView.swift
//  MVVM_Project
//
//  Created by Aleksei on 09.12.2022.
//

import UIKit

final class AdaptedTableView: UITableView {
    
    
    func setup() {
        self.dataSource = self
    }
}


// MARK: - UITableVIewDataSource

extension AdaptedTableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        .zero
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        UITableViewCell()
    }
}
