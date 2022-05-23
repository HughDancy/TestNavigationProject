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
        
        let firstViewController = FirstViewController()
        let firstNavigationController = UINavigationController(rootViewController: firstViewController)
        firstViewController.tabBarItem = UITabBarItem(title: "First", image: .checkmark, tag: 0)
        
        let secondViewController = UIViewController()
        let secondNavigationController = UINavigationController(rootViewController: secondViewController)
        secondViewController.view.backgroundColor = .systemGreen
        secondViewController.tabBarItem = UITabBarItem(title: "Second", image: .remove, tag: 1)
        
        let thirdViewController = UIViewController()
        thirdViewController.view.backgroundColor = .systemYellow
        thirdViewController.tabBarItem = UITabBarItem(title: "Third", image: .add, tag: 2)
        
        let fourViewController = UIViewController()
        fourViewController.view.backgroundColor = .systemPink
        fourViewController.tabBarItem = UITabBarItem(title: "Four", image: .strokedCheckmark, tag: 3)
        
        let fiveViewController = UIViewController()
        fiveViewController.view.backgroundColor = .brown
        fiveViewController.tabBarItem = UITabBarItem(title: "Five", image: .actions, tag: 4)
        
        let sixViewController = UIViewController()
        sixViewController.view.backgroundColor = .blue
        sixViewController.tabBarItem = UITabBarItem(title: "Six", image: .actions, tag: 5)
        
        tabBarController.tabBar.backgroundColor = .white
        
        tabBarController.setViewControllers([
            firstNavigationController,
            secondNavigationController,
            thirdViewController,
            fourViewController,
            fiveViewController
            
        ], animated: true)
        
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        return true
    }
}

