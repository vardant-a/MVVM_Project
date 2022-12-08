//
//  TableViewModelType.swift
//  MVVM_Project
//
//  Created by Aleksei on 08.12.2022.
//

import Foundation

protocol TableViewModelType {
    var numberOfRows: Int { get }
    var profiles: [Profile] { get }
}
