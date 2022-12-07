//
//  ProfileViewModel.swift
//  MVVM_Project
//
//  Created by Aleksei on 07.12.2022.
//

import Foundation

class ProfileViewModel {
    private var profile = Profile(
        name: "Semen",
        secondName: "Semenov",
        age: 18
    )
    
    var name: String {
        return profile.name
    }
    
    var secondName: String {
        return profile.secondName
    }
    
    var age: String {
        return profile.age.formatted()
    }
}
