//
//  FirebaseManager.swift
//  FirebaseRemoteConfiguration
//
//  Created by Ahmed Amin on 04/07/2023.
//

import Foundation
import Firebase



class FirebaseManager {
    
    //MARK: - Singleton
    
    static var instance: FirebaseManager {
        return FirebaseManager()
    }
    
    private init() { }
    
    
    func setupFirebase() {
        
        FirebaseApp.configure()
    }
}
