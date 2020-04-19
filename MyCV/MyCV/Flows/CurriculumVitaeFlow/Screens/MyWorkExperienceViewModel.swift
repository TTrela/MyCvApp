//
//  MyWorkExperienceViewModel.swift
//  MyCV
//
//  Created by Tomasz Trela on 17/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import Foundation

class MyWorkExperienceViewModel {
    public let experienceViewModels: [(sectionModel: SectionView.ViewModel, experienceModel: ExperienceView.ViewModel)]
    
    init(experience: [WorkExperience]) {
        self.experienceViewModels = experience.map({ $0.toExperienceViewModel })
    }
}

fileprivate extension WorkExperience {
    var toExperienceViewModel: (SectionView.ViewModel, ExperienceView.ViewModel) {
        let subsubtitle = "\(dateFrom) - \(dateTo ?? "PresentDate_Text".localized)"
        
        return (SectionView.ViewModel(title: companyName, subtitle: position, subsubtitle: subsubtitle, imageUrl: imageUrl),
                ExperienceView.ViewModel(about: description, responsibilities: responsibilities))
    }
}
