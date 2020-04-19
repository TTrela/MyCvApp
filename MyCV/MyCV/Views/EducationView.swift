//
//  EducationView.swift
//  MyCV
//
//  Created by Tomasz Trela on 17/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import UIKit

class EducationView: UIView {
    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var subjectHeaderLabel: UILabel!
    @IBOutlet weak var subjectLabel: UILabel!
    @IBOutlet weak var facultyHeaderLabel: UILabel!
    @IBOutlet weak var facultyLabel: UILabel!
    
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
        Bundle(for: EducationView.self).loadNibNamed(String(describing: EducationView.self), owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    // MARK: - UI
    private func setupUI() {
        // UI
        backgroundColor = .clear
        contentView.backgroundColor = .clear
        subjectHeaderLabel.text = "SubjectHeader_Text".localized
        facultyHeaderLabel.text = "FacultyHeader_Text".localized
        
        // Data
        subjectLabel.text = viewModel.subject
        facultyLabel.text = viewModel.faculty
    }
    
    // MARK: - ViewModel
    struct ViewModel {
        let subject: String
        let faculty: String
    }
}
