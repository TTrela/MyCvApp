//
//  MainSectionTableViewCell.swift
//  MyCV
//
//  Created by Tomasz Trela on 17/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import UIKit

class MainSectionTableViewCell: UITableViewCell {
    static let identifier = String(describing: MainSectionTableViewCell.self)
    
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    public var viewModel: ViewModel? {
        didSet {
            iconView.image = viewModel?.image
            titleLabel.text = viewModel?.title
            subtitleLabel.text = viewModel?.subtitle
            subtitleLabel.isHidden = viewModel?.subtitle == nil
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Setup UI
        selectionStyle = .none
        backgroundColor = .clear
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 8
        titleLabel.textColor = UIColor.mainColor
        iconView.tintColor = UIColor.mainColor
        subtitleLabel.textColor = .lightGray
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        // Make space between cells and table view
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 1, left: 5, bottom: 1, right: 5))
    }
    
    // MARK: - ViewModel
    struct ViewModel {
        let title: String
        let subtitle: String?
        let image: UIImage
    }
}
