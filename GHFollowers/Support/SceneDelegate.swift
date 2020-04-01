//
//  SceneDelegate.swift
//  GHFollowers
//
//  Created by Andrew Lawler on 29/12/2019.
//  Copyright © 2019 andrewlawler. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        // creating out UIWindow and using the windowScene to create this
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        // setting the root as the tab bar controller and then making it visible
        window?.rootViewController = GFTabBarController()
        window?.makeKeyAndVisible()
        configureNavigationBar()
    }

    func configureNavigationBar() {
        UINavigationBar.appearance().tintColor = .systemGreen
    }
    
    // not used any of these pre-added methods so they are blank
    func sceneDidDisconnect(_ scene: UIScene) {

    }

    
    func sceneDidBecomeActive(_ scene: UIScene) {

    }

    
    func sceneWillResignActive(_ scene: UIScene) {

    }

    
    func sceneWillEnterForeground(_ scene: UIScene) {
 
    }

    
    func sceneDidEnterBackground(_ scene: UIScene) {
       
    }


}

