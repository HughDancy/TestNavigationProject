//
//  First ViewController.swift
//  TestNavigationProject
//
//  Created by Борис Киселев on 23.05.2022.
//

import UIKit

class FirstViewController: UIViewController {
    
  //MARK: - Views
    
    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Press Me", for: .normal)
        button.addTarget(self, action: #selector(tapButtonAction), for: .touchUpInside)
        return button
    }()
    
  //MARK: - Actions
    
    @objc private func tapButtonAction() {
        navigationController?.pushViewController(FirstChildViewController(), animated: true)
        //navigationController?.tabBarController?.tabBar.isHidden = true
    }
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemRed
    }
    
    // MARK: - initial
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: Settings
    
    private func setupHierarchy() {
        view.addSubview(button)
    }
    
    private func setupLayout() {
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
