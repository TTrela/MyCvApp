//
//  DecodingTests.swift
//  MyCVTests
//
//  Created by Tomasz Trela on 17/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import XCTest
@testable import MyCV

class DecodingTests: XCTestCase {
    
    func testDecodeJSON() throws {
        do {
            let cv = try CurriculumVitaeDecoder.default.decode(CurriculumVitae.self, from: jsonMockData)
            XCTAssertTrue(cv.courses.count == 2)
            XCTAssertTrue(cv.education.count == 2)
            XCTAssertTrue(cv.mySkills.count == 4)
            XCTAssertTrue(cv.ownProjects.count == 6)
            XCTAssertTrue(cv.workExperience.count == 3)
            XCTAssertTrue(cv.personalInfo.name == "Tomasz")
            
        } catch {
            XCTFail("fail: \(error)")
        }
    }
}
