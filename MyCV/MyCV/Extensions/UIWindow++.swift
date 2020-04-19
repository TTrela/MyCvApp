//
//  UIWindow.swift
//  MyCV
//
//  Created by Tomasz Trela on 19/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import UIKit

extension UIWindow {
    func setRootViewController(_ viewController: UIViewController) {
        if self.isKeyWindow == false {
            self.makeKeyAndVisible()
        }
        
        if let current = self.rootViewController {
            current.dismiss(animated: false) {
                self.rootViewController = viewController
                // Switch rootViewController with animation
                UIView.transition(with: self, duration: 0.2, options: .transitionCrossDissolve, animations: nil, completion: nil)
            }
        } else {
            self.rootViewController = viewController
        }
    }
}
