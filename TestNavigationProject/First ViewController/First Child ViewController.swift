//
//  First Child ViewController.swift
//  TestNavigationProject
//
//  Created by Борис Киселев on 23.05.2022.
//

import UIKit

class FirstChildViewController: UIViewController {
    
    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Dimiss Me", for: .normal)
        button.addTarget(self, action: #selector(tapButtonAction), for: .touchUpInside)
        return button
    }()
    
    @objc private func tapButtonAction() {
        navigationController?.popViewController(animated: true)
    }
    
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemMint
        title = "First Child"
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        
    }
    
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
  

