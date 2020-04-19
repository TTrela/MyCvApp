//
//  ExperienceView.swift
//  MyCV
//
//  Created by Tomasz Trela on 17/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import UIKit

class ExperienceView: UIView {
    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var aboutHeaderlabel: UILabel!
    @IBOutlet weak var aboutLabel: UILabel!
    @IBOutlet weak var responsibilityHeaderLabel: UILabel!
    @IBOutlet weak var responsibilityLabel: UILabel!
    
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
        Bundle(for: ExperienceView.self).loadNibNamed(String(describing: ExperienceView.self), owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    // MARK: - UI
    private func setupUI() {
        // UI
        backgroundColor = .clear
        contentView.backgroundColor = .clear
        aboutHeaderlabel.text = "AboutHeader_Text".localized
        responsibilityHeaderLabel.text = "ResponsibilitiesHeader_Text".localized
        
        
        // Data
        aboutLabel.text = viewModel.about
        responsibilityLabel.text = viewModel.responsibilities.map({ "• \($0)" }).joined(separator: "\n")
    }
    
    // MARK: - ViewModel
    struct ViewModel {
        let about: String
        let responsibilities: [String]
    }
}
