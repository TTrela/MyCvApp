//
//  MyCoursesViewModel.swift
//  MyCV
//
//  Created by Tomasz Trela on 17/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import Foundation

class MyCoursesViewModel {
    public let coursesViewModels: [(sectionModel: SectionView.ViewModel, subject: String)]
    
    init(courses: [Course]) {
        self.coursesViewModels = courses.map({ $0.toCoursesViewModel })
    }
}

fileprivate extension Course {
    var toCoursesViewModel: (SectionView.ViewModel, String) {
        let subsubtitle = "\(dateFrom) - \(dateTo)"
        
        return (SectionView.ViewModel(title: place, subtitle: subsubtitle, subsubtitle: nil, imageUrl: imageUrl),
                subject)
    }
}
