//
//  MySkillsViewModel.swift
//  MyCV
//
//  Created by Tomasz Trela on 17/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import Foundation

class MySkillsViewModel {
    public let mySkillsViewModels: [(sectionModel: SectionView.ViewModel, description: String)]
    
    init(skills: [Skill]) {
        self.mySkillsViewModels = skills.map({ $0.toMySkilsViewModel })
    }
}

fileprivate extension Skill {
    var toMySkilsViewModel: (SectionView.ViewModel, String) {
        return (SectionView.ViewModel(title: type, subtitle: nil, subsubtitle: nil, imageUrl: nil),
                skills.map({ "• \($0)" }).joined(separator: "\n"))
    }
}
