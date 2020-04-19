//
//  CircleImageView.swift
//  MyCV
//
//  Created by Tomasz Trela on 18/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import UIKit

class CircleImageView: UIImageView {
    override var bounds: CGRect {
        didSet {
            updateCornerRadius()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        updateCornerRadius()
    }
    
    override init(image: UIImage?, highlightedImage: UIImage?) {
        super.init(image: image, highlightedImage: highlightedImage)
        updateCornerRadius()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        updateCornerRadius()
    }
    
    private func updateCornerRadius() {
        layer.cornerRadius = bounds.width/2
    }
}
