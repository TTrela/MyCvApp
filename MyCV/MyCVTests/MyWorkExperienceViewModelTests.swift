//
//  MyWorkExperienceViewModelTests.swift
//  MyCVTests
//
//  Created by Tomasz Trela on 19/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import XCTest
@testable import MyCV

class MyWorkExperienceViewModelTests: XCTestCase {
    
    func testViewModel() throws {
        let experience1 = WorkExperience(companyName: "ACME", position: "Develoeper", dateFrom: "1", dateTo: "2", description: "abc", responsibilities: ["a", "b"], imageUrl: nil)
        let experience2 = WorkExperience(companyName: "ACME", position: "Develoeper", dateFrom: "1", dateTo: nil, description: "abc", responsibilities: ["a", "b"], imageUrl: nil)
        let viewModel = MyWorkExperienceViewModel(experience: [experience1, experience2])
        
        let experienceViewModels = viewModel.experienceViewModels
        
        XCTAssertTrue(experienceViewModels.count == 2)
        XCTAssertNil(experienceViewModels[0].sectionModel.imageUrl)
        XCTAssertTrue(experienceViewModels[0].sectionModel.title == "ACME")
        XCTAssertTrue(experienceViewModels[0].sectionModel.subtitle == "Develoeper")
        XCTAssertTrue(experienceViewModels[0].sectionModel.subsubtitle == "1 - 2")
        
        XCTAssertTrue(experienceViewModels[1].sectionModel.subsubtitle == "1 - \("PresentDate_Text".localized)")
        
        XCTAssertTrue(experienceViewModels[0].experienceModel.about == "abc")
        XCTAssertTrue(experienceViewModels[0].experienceModel.responsibilities == ["a", "b"])
    }
}
