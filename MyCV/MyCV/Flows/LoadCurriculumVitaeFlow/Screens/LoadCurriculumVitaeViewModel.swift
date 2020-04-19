//
//  LoadCurriculumVitaeViewModel.swift
//  MyCV
//
//  Created by Tomasz Trela on 19/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import Foundation

class LoadCurriculumVitaeViewModel {
    private let url: URL
    public let completion: (Result<CurriculumVitae, Error>) -> Void
    private let urlSession: URLSession
    
    init(url: URL, completion: @escaping (Result<CurriculumVitae, Error>) -> Void) {
        self.url = url
        self.completion = completion
        
        let configuration = URLSessionConfiguration.default
        configuration.requestCachePolicy = .reloadRevalidatingCacheData
        self.urlSession = URLSession(configuration: configuration)
    }
    
    public func loadCurriculumVitae() {
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard
                let data = data,
                error == nil,
                let cv = try? CurriculumVitaeDecoder.default.decode(CurriculumVitae.self, from: data)
            else {
                let error = error ?? NSError(domain: NSURLErrorDomain, code: NSURLErrorUnknown, userInfo: nil)
                self.completion(.failure(error))
                return
            }
        
            self.completion(.success(cv))
        }.resume()
    }
}
