//
//  MyOwnProjectsViewModelTests.swift
//  MyCVTests
//
//  Created by Tomasz Trela on 19/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import XCTest
@testable import MyCV

class MyOwnProjectsViewModelTests: XCTestCase {

    func testViewModel() throws {
        let ownProject1 = OwnProject(tile: "A", subtitle: "B", description: "C", imageUrl: nil)
        let ownProject2 = OwnProject(tile: "A", subtitle: "B", description: "C", imageUrl: nil)
        let viewModel = MyOwnProjectsViewModel(ownProjects: [ownProject1, ownProject2])
        
        let ownProjectsViewModels = viewModel.ownProjectsViewModels
        
        XCTAssertTrue(ownProjectsViewModels.count == 2)
        XCTAssertNil(ownProjectsViewModels[0].sectionModel.imageUrl)
        XCTAssertNil(ownProjectsViewModels[0].sectionModel.subsubtitle)
        XCTAssertTrue(ownProjectsViewModels[0].sectionModel.title == "A")
        XCTAssertTrue(ownProjectsViewModels[0].sectionModel.subtitle == "B")
        
        XCTAssertTrue(ownProjectsViewModels[0].description == "C")
    }
}
