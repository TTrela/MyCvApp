//
//  LoadCurriculumVitaeFlow.swift
//  MyCV
//
//  Created by Tomasz Trela on 19/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import UIKit

class LoadCurriculumVitaeFlow {
    private let url: URL
    private weak var window: UIWindow?
    
    // MARK: - Inits
    init(url: URL, window: UIWindow?) {
        self.url = url
        self.window = window
    }

    // MARK: - Life cycle
    public func begin() {
        showLoadScreen { [weak self] result in
            switch result {
            case .success(let curriculumVitare):
                self?.showCurriculumVitaeFlow(curriculumVitae: curriculumVitare)
                
            case .failure(let error):
                self?.showLoadErrorScreen(error: error, onRetry: { [weak self] in
                    self?.begin()
                })
            }
        }
    }
    
    // MARK: - Screens
    private func showLoadScreen(completion: @escaping (Result<CurriculumVitae, Error>) -> Void) {
        let viewModel = LoadCurriculumVitaeViewModel(url: url, completion: completion)
        let viewController = LoadCurriculumVitaeViewController(viewModel: viewModel)
        
        window?.setRootViewController(viewController)
    }
    
    private func showLoadErrorScreen(error: Error, onRetry: @escaping () -> Void) {
        DispatchQueue.main.async {
            guard let window = self.window else { return }
            let viewModel = LoadCurriculumVitaeErrorViewModel(error: error, onRetry: onRetry)
            let viewController = LoadCurriculumVitaeErrorViewController(viewModel: viewModel)
            
            window.setRootViewController(viewController)
        }
    }

    private func showCurriculumVitaeFlow(curriculumVitae: CurriculumVitae) {
        DispatchQueue.main.async {
            guard let window = self.window else { return }
            let flow = CurriculumVitaeFlow(curriculumVitae: curriculumVitae)
            
            window.setRootViewController(flow)
        }
    }
}
