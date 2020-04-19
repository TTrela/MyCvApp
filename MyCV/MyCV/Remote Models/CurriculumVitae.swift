//
//  CurriculumVitae.swift
//  MyCV
//
//  Created by Tomasz Trela on 17/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import Foundation

struct Course: Codable {
    let dateFrom: String
    let dateTo: String
    let place: String
    let subject: String
    let imageUrl: URL?
}

struct Skill: Codable {
    let type: String
    let skills: [String]
}

struct OwnProject: Codable {
    let tile: String
    let subtitle: String
    let description: String
    let imageUrl: URL?
}

struct WorkExperience: Codable {
    let companyName: String
    let position: String
    let dateFrom: String
    let dateTo: String?
    let description: String
    let responsibilities: [String]
    let imageUrl: URL?
}

struct PersonalInfo: Codable {
    let name: String
    let surname: String
    let specialization: String
    let dateOfBirth: String
    let address: String
    let phoneNumber: String
    let email: String
    let imageUrl: URL?
}

struct Education: Codable {
    let dateFrom: String
    let dateTo: String?
    let name: String
    let subject: String
    let faculty: String
    let imageUrl: URL?
}

struct CurriculumVitae: Codable {
    let personalInfo: PersonalInfo
    let education: [Education]
    let workExperience: [WorkExperience]
    let ownProjects: [OwnProject]
    let mySkills: [Skill]
    let courses: [Course]
}
