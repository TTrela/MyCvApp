//
//  GradientView.swift
//  MyCV
//
//  Created by Tomasz Trela on 19/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import UIKit

internal class GradientView: UIView {
    override public class var layerClass: Swift.AnyClass {
        return CAGradientLayer.self
    }
}
