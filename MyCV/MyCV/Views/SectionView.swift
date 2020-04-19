//
//  SectionView.swift
//  MyCV
//
//  Created by Tomasz Trela on 17/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import UIKit

class SectionView: UIView {
    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var subsubtitleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageViewWidthConstraint: NSLayoutConstraint!

    private var contentViews: [UIView]
    private let viewModel: ViewModel
    
    // MARK: - Inits
    init(viewModel: ViewModel, contentViews: [UIView]) {
        self.viewModel = viewModel
        self.contentViews = contentViews
        super.init(frame: CGRect.zero)
        self.initialize()
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initialize() {
        Bundle(for: SectionView.self).loadNibNamed(String(describing: SectionView.self), owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]

        contentViews.forEach({ stackView.addArrangedSubview($0) })
    }
    
    // MARK: - UI
    private func setupUI() {
        backgroundColor = .white
        
        headerView.backgroundColor = UIColor.mainColor
        headerView.layer.cornerRadius = 8
        headerView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        
        layer.borderColor = UIColor.mainColor.cgColor
        layer.cornerRadius = 8
        layer.borderWidth = 3
        
        contentView.backgroundColor = .clear
        imageView.layer.cornerRadius = 8

        // Data
        titleLabel.text = viewModel.title
        subtitleLabel.text = viewModel.subtitle
        subsubtitleLabel.text = viewModel.subsubtitle
        
        subtitleLabel.isHidden = viewModel.subtitle == nil
        subsubtitleLabel.isHidden = viewModel.subsubtitle == nil
        
        // Make more space for text if image is nil
        if viewModel.imageUrl == nil { imageViewWidthConstraint.constant = 0 }
        imageView.image(url: viewModel.imageUrl)
    }
    
    // MARK: - ViewModel
    struct ViewModel {
        let title: String
        let subtitle: String?
        let subsubtitle: String?
        let imageUrl: URL?
    }
}
