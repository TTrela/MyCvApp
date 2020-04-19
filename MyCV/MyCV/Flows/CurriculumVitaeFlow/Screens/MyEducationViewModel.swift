//
//  MyEducationViewModel.swift
//  MyCV
//
//  Created by Tomasz Trela on 17/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import Foundation

class MyEducationViewModel {
    public let educationViewModels: [(sectionModel: SectionView.ViewModel, educationModel: EducationView.ViewModel)]
    
    init(educations: [Education]) {
        self.educationViewModels = educations.map({ $0.toEducationViewModel })
    }
}

fileprivate extension Education {
    var toEducationViewModel: (SectionView.ViewModel, EducationView.ViewModel) {
        let subtitle = "\(dateFrom) - \(dateTo ?? "PresentDate_Text".localized)"
        
        return (SectionView.ViewModel(title: name, subtitle: subtitle, subsubtitle: nil, imageUrl: imageUrl),
                EducationView.ViewModel(subject: subject, faculty: faculty))
    }
}
