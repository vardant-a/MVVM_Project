//
//  SecondViewModel.swift
//  MVVM_Project
//
//  Created by Aleksei on 08.12.2022.
//

import Foundation


final class SecondViewModel: TableViewModelType {
    
    let profiles = [
        Profile(name: "Color", secondName: "Red", age: 32),
        Profile(name: "Color2", secondName: "Green", age: 23),
        Profile(name: "Color3", secondName: "Blue", age: 18),
        ]
    
    var numberOfRows: Int {
        profiles.count
    }
}
