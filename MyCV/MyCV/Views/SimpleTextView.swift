//
//  SimpleTextView.swift
//  MyCV
//
//  Created by Tomasz Trela on 17/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import UIKit

class SimpleTextView: UILabel {
    
    init(text: String) {
        super.init(frame: CGRect.zero)
        numberOfLines = 0
        font = .preferredFont(forTextStyle: UIFont.TextStyle.callout)
        self.text = text
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
