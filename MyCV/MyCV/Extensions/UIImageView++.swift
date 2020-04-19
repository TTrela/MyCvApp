//
//  UIImageView++.swift
//  MyCV
//
//  Created by Tomasz Trela on 18/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import UIKit

extension UIImageView {
    public func image(url: URL?) {
        image = nil
        
        guard let url = url else { return }
        downloadImage(url, completion: { [weak self] image in
            DispatchQueue.main.async() {
                self?.image = image
            }
        })
    }
    
    private func downloadImage(_ url: URL, completion: @escaping (UIImage?) -> Void) {
        URLSession.shared.dataTask(with: url) { data, _, _ in
            guard
                let data = data,
                let image = UIImage(data: data)
            else {
                return
            }
            completion(image)
        }.resume()
    }
}
