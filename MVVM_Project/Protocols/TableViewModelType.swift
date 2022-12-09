//
//  TableViewModelType.swift
//  MVVM_Project
//
//  Created by Aleksei on 08.12.2022.
//

import Foundation

protocol TableViewViewModelType {
    func numberOfRows() -> Int?
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType?
}

protocol TableViewCellViewModelType: AnyObject {
    var fullName: String { get }
    var age: String { get }
}
