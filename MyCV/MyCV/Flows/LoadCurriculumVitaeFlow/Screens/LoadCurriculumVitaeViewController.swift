//
//  LoadCurriculumVitaeViewController.swift
//  MyCV
//
//  Created by Tomasz Trela on 19/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import UIKit

class LoadCurriculumVitaeViewController: UIViewController {
    private let viewModel: LoadCurriculumVitaeViewModel
    
    // MARK: - Inits
    init(viewModel: LoadCurriculumVitaeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.mainColor
        
        // Add activity indicator
        let loader = UIActivityIndicatorView(style: .large)
        loader.color = .white
        loader.startAnimating()
        view.addSubview(loader)

        loader.translatesAutoresizingMaskIntoConstraints = false
        loader.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loader.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        viewModel.loadCurriculumVitae()
    }
}
