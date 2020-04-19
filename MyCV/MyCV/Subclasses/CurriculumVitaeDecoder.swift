//
//  CurriculumVitaeDecoder.swift
//  MyCV
//
//  Created by Tomasz Trela on 19/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import Foundation

class CurriculumVitaeDecoder: JSONDecoder {
    static let `default` = CurriculumVitaeDecoder()
    
    override init() {
        super.init()
        self.keyDecodingStrategy = .convertFromSnakeCase
    }
}
