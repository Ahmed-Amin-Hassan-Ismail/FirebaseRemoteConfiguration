//
//  FirebaseRemoteConfigurationApp.swift
//  FirebaseRemoteConfiguration
//
//  Created by Ahmed Amin on 04/07/2023.
//

import SwiftUI

@main
struct FirebaseRemoteConfigurationApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}


class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
     
        
        FirebaseManager.instance.setupFirebase()
        RemoteConfigurationManager.configure(expirationDuration: 0)
        
        return true
    }
}
