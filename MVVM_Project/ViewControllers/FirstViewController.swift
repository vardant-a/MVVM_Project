//
//  FirstViewController.swift
//  MVVM_Project
//
//  Created by Aleksei on 07.12.2022.
//

import UIKit

final class FirstViewController: UIViewController {
    
// MVVM Pattern
    private var viewModel: ProfileViewModel? = ProfileViewModel() {
        didSet {
            self.labelName.text = viewModel?.name
            self.labelSecondName.text = viewModel?.secondName
            self.labelAge.text = viewModel?.age
        }
    }
    
    // MARK: - Private lazy properties
    
    // Label for Name
    private lazy var labelName: UILabel = {
        let label = UILabel()
        return label
    }()
    
    // Label for Second name
    private lazy var labelSecondName: UILabel = {
        let label = UILabel()
        return label
    }()
    
    // Label for Age
    private lazy var labelAge: UILabel = {
        let label = UILabel()
        return label
    }()
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        addSubviews(labelName, labelSecondName, labelAge)
        setConstrains()
        
        viewModel = ProfileViewModel()
    }
}

// MARK: - Set constrains for all view elements
extension FirstViewController {
    private func setConstrains() {
        labelName.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelName.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        labelSecondName.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelSecondName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelSecondName.topAnchor.constraint(equalTo: labelName.bottomAnchor, constant: 20)
        ])
        
        labelAge.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelAge.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelAge.topAnchor.constraint(equalTo: labelSecondName.bottomAnchor, constant: 20)
        ])
    }
}

// MARK: - Adding subviews
extension FirstViewController {
    private func addSubviews(_ viewElements: UIView...) {
        viewElements.forEach { element in
            view.addSubview(element)
        }
    }
}
// MARK: - MVC Pattern
//    var profile: Profile? {
//        didSet {
//            guard let profile = profile else { return }
//
//            self.labelName.text = profile.name
//            self.labelSecondName.text = profile.secondName
//            self.labelAge.text = profile.age.formatted()
//        }
//    }
