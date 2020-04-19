//
//  LoadCurriculumVitaeErrorViewModel.swift
//  MyCV
//
//  Created by Tomasz Trela on 19/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import Foundation

class LoadCurriculumVitaeErrorViewModel {
    public let onRetry: () -> Void
    public let errorText: String
    
    init(error: Error, onRetry: @escaping () -> Void) {
        self.onRetry = onRetry
        
        switch error {
        case let error as NSError where error.domain == NSURLErrorDomain && error.code == NSURLErrorNotConnectedToInternet:
            self.errorText = "NoInternetError_Message".localized

        default:
            self.errorText = "UnknownError_Message".localized
        }
    }
}
