//
//  GuestTabBarController.swift
//  ProgrammaticallyNavigation
//
//  Created by Le Hoang Long on 11/03/2024.
//

import UIKit

class GuestTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        configureTabs()
    }

    private func configureTabs() {
        let vc1 = HomeViewController()
        let vc2 = LoginViewController()
        
        // Set Tab Images
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "person")
        
        // Set Title
        vc1.title = "Home"
        vc2.title = "Login"
        
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        
        tabBar.tintColor = .label
        tabBar.backgroundColor = .systemGray6
        
        setViewControllers([nav1, nav2], animated: true)
    }

}
