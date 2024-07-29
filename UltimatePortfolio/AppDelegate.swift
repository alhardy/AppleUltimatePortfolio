//
//  AppDelegate.swift
//  UltimatePortfolio
//
//  Created by Paul Hudson on 21/02/2024.
//

import SwiftUI

#if os(iOS)
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        configurationForConnecting connectingSceneSession: UISceneSession,
        options: UIScene.ConnectionOptions
    ) -> UISceneConfiguration {
        let sceneConfiguration = UISceneConfiguration(name: "Default", sessionRole: connectingSceneSession.role)
        sceneConfiguration.delegateClass = SceneDelegate.self
        return sceneConfiguration
    }
}
#endif
