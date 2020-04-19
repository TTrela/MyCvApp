//
//  MyOwnProjectsViewModel.swift
//  MyCV
//
//  Created by Tomasz Trela on 17/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import Foundation

class MyOwnProjectsViewModel {
    public let ownProjectsViewModels: [(sectionModel: SectionView.ViewModel, description: String)]
    
    init(ownProjects: [OwnProject]) {
        self.ownProjectsViewModels = ownProjects.map({ $0.toOwnProjectsViewModel })
    }
}

fileprivate extension OwnProject {
    var toOwnProjectsViewModel: (SectionView.ViewModel, String) {
        return (SectionView.ViewModel(title: tile, subtitle: subtitle, subsubtitle: nil, imageUrl: imageUrl),
                description: description)
    }
}
