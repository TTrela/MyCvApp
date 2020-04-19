//
//  MyCoursesViewModelTests.swift
//  MyCVTests
//
//  Created by Tomasz Trela on 19/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import XCTest
@testable import MyCV

class MyCoursesViewModelTests: XCTestCase {
    
    func testViewModel() throws {
        let course1 = Course(dateFrom: "1", dateTo: "2", place: "A", subject: "C", imageUrl: nil)
        let course2 = Course(dateFrom: "1", dateTo: "2", place: "A", subject: "C", imageUrl: nil)
        let viewModel = MyCoursesViewModel(courses: [course1, course2])
        
        let coursesViewModels = viewModel.coursesViewModels
        
        XCTAssertTrue(coursesViewModels.count == 2)
        XCTAssertNil(coursesViewModels[0].sectionModel.imageUrl)
        XCTAssertNil(coursesViewModels[0].sectionModel.subsubtitle)
        XCTAssertTrue(coursesViewModels[0].sectionModel.title == "A")
        XCTAssertTrue(coursesViewModels[0].sectionModel.subtitle == "1 - 2")
        
        XCTAssertTrue(coursesViewModels[0].subject == "C")
    }
}

