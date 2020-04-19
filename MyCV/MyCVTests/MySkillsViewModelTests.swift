//
//  MySkillsViewModelTests.swift
//  MyCVTests
//
//  Created by Tomasz Trela on 19/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import XCTest
@testable import MyCV

class MySkillsViewModelTests: XCTestCase {
    
    func testViewModel() throws {
        let skill1 = Skill(type: "A", skills: ["C", "D"])
        let skill2 = Skill(type: "A", skills: ["C", "D"])
        let viewModel = MySkillsViewModel(skills: [skill1, skill2])
        
        let mySkillsViewModels = viewModel.mySkillsViewModels
        
        XCTAssertTrue(mySkillsViewModels.count == 2)
        XCTAssertNil(mySkillsViewModels[0].sectionModel.imageUrl)
        XCTAssertNil(mySkillsViewModels[0].sectionModel.subsubtitle)
        XCTAssertNil(mySkillsViewModels[0].sectionModel.subtitle)
        XCTAssertTrue(mySkillsViewModels[0].sectionModel.title == "A")
        
        XCTAssertTrue(mySkillsViewModels[0].description.contains(skill1.skills[0]))
        XCTAssertTrue(mySkillsViewModels[0].description.contains(skill1.skills[1]))
    }
}
