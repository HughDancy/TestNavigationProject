//
//  Third Child ViewCOntroller.swift
//  TestNavigationProject
//
//  Created by Борис Киселев on 24.05.2022.
//

import UIKit

class ThirdChildViewController: UIViewController {
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemPurple
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        title = "Second Child"
        
    }
}
