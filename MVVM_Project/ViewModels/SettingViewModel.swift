//
//  SettingViewModel.swift
//  MVVM_Project
//
//  Created by Aleksei on 07.12.2022.
//

import UIKit

struct Section {

    var header: String?
    var footer: String?
    var cells: [UITableViewCell]
    var contentSection: ()-> Void?
}

class SectionViewModel {
    private var section = Section(
        header: "Name",
        footer: "Footer",
        cells: [CustomTableViewCell()],
        contentSection: {}
    )
}
