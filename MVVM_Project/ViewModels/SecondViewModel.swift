//
//  SecondViewModel.swift
//  MVVM_Project
//
//  Created by Aleksei on 08.12.2022.
//

import Foundation


final class SecondViewModel: TableViewViewModelType {

    let profiles = [
        Profile(name: "Color", secondName: "Red", age: 32),
        Profile(name: "Color2", secondName: "Green", age: 23),
        Profile(name: "Color3", secondName: "Blue", age: 18),
        ]
    
    func numberOfRows() -> Int? {
        profiles.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
}

final class TableViewCellViewModel: TableViewCellViewModelType {
    
    private var profile: Profile
    
    var fullName: String {
        profile.name + " " + profile.secondName
    }
    
    var age: String {
        return String(profile.age)
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}

