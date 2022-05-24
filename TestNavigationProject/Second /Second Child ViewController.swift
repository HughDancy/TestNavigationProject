//
//  Second Child ViewController.swift
//  TestNavigationProject
//
//  Created by Борис Киселев on 24.05.2022.
//

import UIKit

class SecondChildViewController: UIViewController {
    
    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Dimiss Me", for: .normal)
        button.addTarget(self, action: #selector(tapButtonAction), for: .touchUpInside)
        return button
    }()
    
    @objc private func tapButtonAction() {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemIndigo
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        title = "Second Child"
        
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
    // MARK: - initial
//    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    //        super.init(nibName: nil, bundle: nil)
    //
    //    }
    //
    //    required init?(coder: NSCoder) {
    //        super.init(coder: coder)
    //    }
    
    
