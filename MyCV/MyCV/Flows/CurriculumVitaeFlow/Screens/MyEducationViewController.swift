//
//  MyEducationViewController.swift
//  MyCV
//
//  Created by Tomasz Trela on 19/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import UIKit

class MyEducationViewController: StackViewViewController {
    private let viewModel: MyEducationViewModel
    
    // MARK: - Inits
    init(viewModel: MyEducationViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        for model in viewModel.educationViewModels {
            let contentView = EducationView(viewModel: model.educationModel)
            let sectionView = SectionView(viewModel: model.sectionModel, contentViews: [contentView])
            stackView.addArrangedSubview(sectionView)
        }
    }
}
