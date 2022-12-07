//
//  MainTabBarController.swift
//  MVVM_Project
//
//  Created by Aleksei on 07.12.2022.
//

import UIKit

final class MainTabBarController: UITabBarController {
 
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        addTabForBar()
        settingTabBar()
    }
    
}

extension MainTabBarController {
    private func addTabForBar() {
        let firstVC = FirstViewController()
        firstVC.tabBarItem = UITabBarItem(
            title: "First", image: UIImage(systemName: "1.circle"), tag: 0)
        let secondVC = SecondViewController()
        secondVC.tabBarItem = UITabBarItem(
            title: "Second", image: UIImage(systemName: "2.circle"), tag: 1)
        let thirdVC = ThirdViewController()
        thirdVC.tabBarItem = UITabBarItem(
            title: "Third", image: UIImage(systemName: "3.circle"), tag: 1)
        
        viewControllers = [firstVC, secondVC, thirdVC]
    }
}

// MARK: - TabBarController settings throughout the app
extension MainTabBarController {
    private func settingTabBar() {
        let tabBarAppearance = UITabBar.appearance()
        tabBarAppearance.backgroundColor = .gray
        tabBarAppearance.unselectedItemTintColor = .white
        tabBarAppearance.tintColor = .systemBlue
    }
}
