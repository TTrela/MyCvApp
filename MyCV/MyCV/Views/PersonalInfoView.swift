//
//  PersonalInfoView.swift
//  MyCV
//
//  Created by Tomasz Trela on 18/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import UIKit

class PersonalInfoView: UIView {
    @IBOutlet var contentView: GradientView!
    
    @IBOutlet weak var imageView: CircleImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var specializationLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var dateOfBirthLabel: UILabel!
    
    private let viewModel: ViewModel
    
    // MARK: - Inits
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
        super.init(frame: CGRect.zero)
        self.initialize()
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initialize() {
        Bundle(for: PersonalInfoView.self).loadNibNamed(String(describing: PersonalInfoView.self), owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    // MARK: - UI
    private func setupUI() {
        // Gradient background
        let colors = [
            UIColor.subColor.cgColor,
            UIColor.mainColor.cgColor
        ]
        (contentView.layer as? CAGradientLayer)?.colors = colors
        backgroundColor = .clear
        
        // UI
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.layer.borderWidth = 3
        
        // Data
        imageView.image(url: viewModel.imageUrl)
        nameLabel.text = "\(viewModel.name) \(viewModel.surname)"
        specializationLabel.text = viewModel.specialization
        addressLabel.text = viewModel.address
        phoneLabel.text = viewModel.phone
        emailLabel.text = viewModel.email
        dateOfBirthLabel.text = viewModel.dateOfBirth
    }
    
    // MARK: - ViewModel
    struct ViewModel {
        let name: String
        let surname: String
        let specialization: String
        let address: String
        let phone: String
        let email: String
        let dateOfBirth: String
        let imageUrl: URL?
    }
}

