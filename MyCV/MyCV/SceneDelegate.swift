//
//  SceneDelegate.swift
//  MyCV
//
//  Created by Tomasz Trela on 17/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    private let cvUrl = URL(string: "https://gist.githubusercontent.com/TTrela/8e37da9df84cee0318aa77f304500fdb/raw/8a170911b07027a1f75f856b3fbe654a4898c414/gistfile1.txt")!
    private var initialFlow: LoadCurriculumVitaeFlow?
    internal var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        initialFlow = LoadCurriculumVitaeFlow(url: cvUrl, window: window)
        initialFlow?.begin()
    }
}

