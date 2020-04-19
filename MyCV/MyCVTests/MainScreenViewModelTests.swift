//
//  MainScreenViewModelTests.swift
//  MyCVTests
//
//  Created by Tomasz Trela on 19/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import XCTest
@testable import MyCV

class MainScreenViewModelTests: XCTestCase {
    
    func testViewModel() throws {
        let url = URL(string: "https://google.pl")!
        let cv = CurriculumVitae(
            personalInfo: PersonalInfo(name: "Tomasz", surname: "Trela", specialization: "iOS", dateOfBirth: "1", address: "A", phoneNumber: "123", email: "a@.pl", imageUrl: url),
            education: [],
            workExperience: [],
            ownProjects: [],
            mySkills: [],
            courses: [])
        
        let viewModel = MainScreenViewModel(curiculuVitae: cv, onSectionSelected: { _ in })
        let personalInfoViewModel = viewModel.personalInfoViewModel()
        
        XCTAssertTrue(personalInfoViewModel.address == "A")
        XCTAssertTrue(personalInfoViewModel.dateOfBirth == "1")
        XCTAssertTrue(personalInfoViewModel.email == "a@.pl")
        XCTAssertTrue(personalInfoViewModel.imageUrl == url)
        XCTAssertTrue(personalInfoViewModel.name == "Tomasz")
        XCTAssertTrue(personalInfoViewModel.surname == "Trela")
        XCTAssertTrue(personalInfoViewModel.phone == "123")
    }
    
    func testCellModels() {
        let cv = CurriculumVitae(
            personalInfo: PersonalInfo(name: "Tomasz", surname: "Trela", specialization: "iOS", dateOfBirth: "1", address: "A", phoneNumber: "123", email: "a@.pl", imageUrl: nil),
            education: [Education.empty, Education.empty],
            workExperience: [WorkExperience.empty, WorkExperience.empty],
            ownProjects: [OwnProject.empty, OwnProject.empty],
            mySkills: [Skill.example, Skill.example],
            courses: [Course.empty, Course.empty])
        
        let viewModel = MainScreenViewModel(curiculuVitae: cv, onSectionSelected: { _ in })
        XCTAssertTrue(viewModel.cellViewModel(for: .experience).subtitle == "2 \("ItemsCount_Suffix".localized)")
        XCTAssertTrue(viewModel.cellViewModel(for: .projects).subtitle == "2 \("ItemsCount_Suffix".localized)")
        XCTAssertTrue(viewModel.cellViewModel(for: .courses).subtitle == "2 \("ItemsCount_Suffix".localized)")
        XCTAssertTrue(viewModel.cellViewModel(for: .education).subtitle == "2 \("ItemsCount_Suffix".localized)")
        XCTAssertTrue(viewModel.cellViewModel(for: .skills).subtitle == "4 \("ItemsCount_Suffix".localized)")
    }
}

// MARK: - Utils
extension Education {
    static let empty = Education(dateFrom: "", dateTo: "", name: "", subject: "", faculty: "", imageUrl: nil)
}

extension WorkExperience {
    static let empty = WorkExperience(companyName: "", position: "", dateFrom: "", dateTo: "", description: "", responsibilities: [], imageUrl: nil)
}

extension OwnProject {
    static let empty = OwnProject(tile: "", subtitle: "", description: "", imageUrl: nil)
}

extension Skill {
    static let example = Skill(type: "A", skills: ["B", "C"])
}

extension Course {
    static let empty = Course(dateFrom: "", dateTo: "", place: "", subject: "", imageUrl: nil)
}
