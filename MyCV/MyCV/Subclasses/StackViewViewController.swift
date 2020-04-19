//
//  StackViewViewController.swift
//  MyCV
//
//  Created by Tomasz Trela on 19/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import UIKit

class StackViewViewController: UIViewController {
    let scrollView = UIScrollView()
    let stackView = UIStackView()
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Add scroll view
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        // Add stack view
        scrollView.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor).isActive = true
        stackView.leftAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leftAnchor).isActive = true
        stackView.rightAnchor.constraint(equalTo: scrollView.contentLayoutGuide.rightAnchor).isActive = true
        
        stackView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor).isActive = true
        
        // Blur effect
        let effect = UIBlurEffect(style: UIBlurEffect.Style.dark)
        let blurView = UIVisualEffectView(effect: effect)
        blurView.frame = view.bounds
        blurView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.insertSubview(blurView, at: 0)
        
        // UI
        view.backgroundColor = .clear
        scrollView.showsVerticalScrollIndicator = false
        stackView.axis = .vertical
        stackView.spacing = 10
        scrollView.delegate = self
    }
}

// MARK: - UIScrollViewDelegate
extension StackViewViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        // Disable bounde on top, it prevent iOS 13 'swipe down to dismiss'
        if scrollView.contentOffset.y < 0 {
            scrollView.contentOffset.y = 0
        }
    }
}
