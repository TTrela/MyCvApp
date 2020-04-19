//
//  LoadCurriculumVitaeErrorViewController.swift
//  MyCV
//
//  Created by Tomasz Trela on 19/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import UIKit

class LoadCurriculumVitaeErrorViewController: UIViewController {
    private let viewModel: LoadCurriculumVitaeErrorViewModel
    
    // MARK: - Inits
    init(viewModel: LoadCurriculumVitaeErrorViewModel) {
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
        
        // Add stack view
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 12
        view.addSubview(stackView)

        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true

        // Add error label
        let label = UILabel()
        label.numberOfLines = 0
        label.font  = .preferredFont(forTextStyle: UIFont.TextStyle.callout)
        label.textAlignment = .center
        label.textColor = .white
        label.text = viewModel.errorText
        stackView.addArrangedSubview(label)

        // Add retry button
        let button = UIButton()
        button.setTitle("RetryButton_Title".localized, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(onRetryTapped), for: .touchUpInside)
        stackView.addArrangedSubview(button)
    }
    
    // MARK: - Actions
    @IBAction private func onRetryTapped() {
        viewModel.onRetry()
    }
}
