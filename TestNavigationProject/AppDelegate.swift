//
//  AppDelegate.swift
//  TestNavigationProject
//
//  Created by Борис Киселев on 23.05.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions:
    [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let tabBarController = UITabBarController()
        
        let firstViewController = UIViewController()
        firstViewController.view.backgroundColor = .systemRed
        firstViewController.tabBarItem = UITabBarItem(title: "First", image: .checkmark, tag: 0)
        
        let secondViewController = UIViewController()
        let secondNavigationController = UINavigationController(rootViewController: secondViewController)
        secondNavigationController.navigationBar.backgroundColor = .white
        secondViewController.view.backgroundColor = .systemGreen
        secondViewController.tabBarItem = UITabBarItem(title: "Second", image: .remove, tag: 1)
        
        let thirdViewController = UIViewController()
        thirdViewController.view.backgroundColor = .systemYellow
        thirdViewController.tabBarItem = UITabBarItem(title: "Third", image: .add, tag: 2)
        
        tabBarController.tabBar.backgroundColor = .white
        
        tabBarController.setViewControllers([
            firstViewController,
            secondNavigationController,
            thirdViewController
        ], animated: true)
        
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        return true
    }
}

