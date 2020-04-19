//
//  CurriculumVitaeFlow.swift
//  MyCV
//
//  Created by Tomasz Trela on 17/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import UIKit

class CurriculumVitaeFlow: UINavigationController {
    private let cv: CurriculumVitae
    
    // MARK: - Inits
    init(curriculumVitae: CurriculumVitae) {
        self.cv = curriculumVitae
        super.init(nibName: nil, bundle: nil)
        navigationBar.isHidden = true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        showSelectSectionScreen(curiculuVitae: cv, onSectionSelected: { [weak self] section in
            guard let self = self else { return }
            
            switch section {                
            case .education:
                self.showEducationScreen(educations: self.cv.education)
                
            case .experience:
                self.showWorkExperience(experience: self.cv.workExperience)
                
            case .projects:
                self.showOwnProjectScreen(projects: self.cv.ownProjects)
                
            case .skills:
                self.showSkillsScreen(skills: self.cv.mySkills)
                
            case .courses:
                self.showCoursesScreen(courses: self.cv.courses)
            }
        })
    }
    
    // MARK: - Screens
    private func showSelectSectionScreen(curiculuVitae: CurriculumVitae, onSectionSelected: @escaping (MainScreenViewModel.Section) -> Void) {
        let viewModel = MainScreenViewModel(curiculuVitae: cv, onSectionSelected: onSectionSelected)
        let viewController = MainScreenViewController(viewModel: viewModel)
        
        pushViewController(viewController, animated: false)
    }
    
    private func showWorkExperience(experience: [WorkExperience]) {
        let viewModel = MyWorkExperienceViewModel(experience: experience)
        let viewController = MyWorkExperienceViewController(viewModel: viewModel)
        
        self.present(viewController, animated: true, completion: nil)
    }
    
    private func showEducationScreen(educations: [Education]) {
        let viewModel = MyEducationViewModel(educations: educations)
        let viewController = MyEducationViewController(viewModel: viewModel)
        
        self.present(viewController, animated: true, completion: nil)
    }
    
    private func showOwnProjectScreen(projects: [OwnProject]) {
        let viewModel = MyOwnProjectsViewModel(ownProjects: projects)
        let viewController = MyOwnProjectsViewController(viewModel: viewModel)
        
        self.present(viewController, animated: true, completion: nil)
    }
    
    private func showSkillsScreen(skills: [Skill]) {
        let viewModel = MySkillsViewModel(skills: skills)
        let viewController = MySkillsViewController(viewModel: viewModel)
        
        self.present(viewController, animated: true, completion: nil)
    }
    
    private func showCoursesScreen(courses: [Course]) {
        let viewModel = MyCoursesViewModel(courses: courses)
        let viewController = MyCoursesViewController(viewModel: viewModel)
        
        self.present(viewController, animated: true, completion: nil)
    }
}

