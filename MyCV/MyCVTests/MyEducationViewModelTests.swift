//
//  MyEducationViewModelTests.swift
//  MyCVTests
//
//  Created by Tomasz Trela on 19/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import XCTest
@testable import MyCV

class MyEducationViewModelTests: XCTestCase {

    func testViewModel() throws {
        let education1 = Education(dateFrom: "1", dateTo: "2", name: "AGH", subject: "A", faculty: "B", imageUrl: nil)
        let education2 = Education(dateFrom: "1", dateTo: nil, name: "AGH", subject: "A", faculty: "B", imageUrl: nil)
        let viewModel = MyEducationViewModel(educations: [education1, education2])
        
        let educationViewModels = viewModel.educationViewModels
        
        XCTAssertTrue(educationViewModels.count == 2)
        XCTAssertNil(educationViewModels[0].sectionModel.imageUrl)
        XCTAssertNil(educationViewModels[0].sectionModel.subsubtitle)
        XCTAssertTrue(educationViewModels[0].sectionModel.title == "AGH")
        XCTAssertTrue(educationViewModels[0].sectionModel.subtitle == "1 - 2")
            
        
        XCTAssertTrue(educationViewModels[1].sectionModel.subtitle == "1 - \("PresentDate_Text".localized)")
        
        XCTAssertTrue(educationViewModels[0].educationModel.subject == "A")
        XCTAssertTrue(educationViewModels[0].educationModel.faculty == "B")
    }
}
