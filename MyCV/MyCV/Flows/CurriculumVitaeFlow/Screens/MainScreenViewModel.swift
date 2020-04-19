//
//  MainScreenViewModel.swift
//  MyCV
//
//  Created by Tomasz Trela on 19/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import UIKit

class MainScreenViewModel {
    enum Section: Int, CaseIterable { case experience = 0, projects, courses, education, skills }
    
    private let curiculuVitae: CurriculumVitae
    public let onSectionSelected: (Section) -> Void
    
    init(curiculuVitae: CurriculumVitae, onSectionSelected: @escaping (Section) -> Void) {
        self.curiculuVitae = curiculuVitae
        self.onSectionSelected = onSectionSelected
    }
    
    public func personalInfoViewModel() -> PersonalInfoView.ViewModel {
        return PersonalInfoView.ViewModel(name: curiculuVitae.personalInfo.name, surname: curiculuVitae.personalInfo.surname, specialization: curiculuVitae.personalInfo.specialization, address: curiculuVitae.personalInfo.address, phone: curiculuVitae.personalInfo.phoneNumber, email: curiculuVitae.personalInfo.email, dateOfBirth: curiculuVitae.personalInfo.dateOfBirth, imageUrl: curiculuVitae.personalInfo.imageUrl)
    }
    
    public func cellViewModel(for section: Section) -> MainSectionTableViewCell.ViewModel {
        switch section {
            
        case .education:
            return MainSectionTableViewCell.ViewModel(
                title: "EducationSection_Title".localized,
                subtitle: "\(curiculuVitae.education.count) \("ItemsCount_Suffix".localized)",
                image: UIImage.bookIcon)
            
        case .experience:
            return MainSectionTableViewCell.ViewModel(
                title: "WorkExperienceSection_Title".localized,
                subtitle: "\(curiculuVitae.workExperience.count) \("ItemsCount_Suffix".localized)",
                image: UIImage.briefcaseIcon)
            
        case .projects:
            return MainSectionTableViewCell.ViewModel(
                title: "OwnProjectsSection_Title".localized,
                subtitle: "\(curiculuVitae.ownProjects.count) \("ItemsCount_Suffix".localized)",
                image: UIImage.boxIcon)
            
        case .skills:
            let skillsCount = curiculuVitae.mySkills.map({ $0.skills.count }).reduce(0, +)
            return MainSectionTableViewCell.ViewModel(
                title: "SkillsSection_Title".localized,
                subtitle: "\(skillsCount) \("ItemsCount_Suffix".localized)",
                image: UIImage.skewIcon)
            
        case .courses:
            return MainSectionTableViewCell.ViewModel(
                title: "CoursesSection_Title".localized,
                subtitle: "\(curiculuVitae.courses.count) \("ItemsCount_Suffix".localized)",
                image: UIImage.rosetteIcon)
        }
    }
}
