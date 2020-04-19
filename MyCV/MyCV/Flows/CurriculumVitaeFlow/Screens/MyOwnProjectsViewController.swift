//
//  MyOwnProjectsViewController.swift
//  MyCV
//
//  Created by Tomasz Trela on 17/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import UIKit

class MyOwnProjectsViewController: StackViewViewController {
    private let viewModel: MyOwnProjectsViewModel
    
    // MARK: - Inits
    init(viewModel: MyOwnProjectsViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        for model in viewModel.ownProjectsViewModels {
            let contentView = SimpleTextView(text: model.description)
            let sectionView = SectionView(viewModel: model.sectionModel, contentViews: [contentView])
            stackView.addArrangedSubview(sectionView)
        }
    }
}
