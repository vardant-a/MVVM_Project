//
//  SettingsViewController.swift
//  MVVM_Project
//
//  Created by Aleksei on 09.12.2022.
//

import UIKit

final class SettingsViewController: UIViewController {
    
    private lazy var contentTableView = AdaptedTableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray4
    }
}
