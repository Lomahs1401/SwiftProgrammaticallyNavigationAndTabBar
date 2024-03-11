//
//  UserTabBarViewController.swift
//  ProgrammaticallyNavigation
//
//  Created by Le Hoang Long on 11/03/2024.
//

import UIKit

class UserTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configureTabs()
    }
    
    private func configureTabs() {
        let vc1 = HomeViewController()
        let vc2 = SearchViewController() 
        let vc3 = ProfileViewController()
        
        // Set Tab Images
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc3.tabBarItem.image = UIImage(systemName: "person")
        
        // Set Title
        vc1.title = "Home"
        vc2.title = "Search"
        vc3.title = "Profile"
        
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        let nav3 = UINavigationController(rootViewController: vc3)
        
        tabBar.tintColor = .label
        tabBar.backgroundColor = .systemGray6
        
        setViewControllers([nav1, nav2, nav3], animated: true)
    }

}
