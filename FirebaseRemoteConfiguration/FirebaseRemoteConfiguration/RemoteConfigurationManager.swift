//
//  RemoteConfigurationManager.swift
//  FirebaseRemoteConfiguration
//
//  Created by Ahmed Amin on 04/07/2023.
//

import Foundation
import Firebase


struct RemoteConfigurationManager {
    
    //MARK: - Properties
    
    private static var remoteConfig: RemoteConfig = {
       
        let configuration = RemoteConfig.remoteConfig()
        let settings = RemoteConfigSettings()
        
        settings.minimumFetchInterval = 0 // -> fetch update values every 0 seconds
        configuration.configSettings = settings
        configuration.setDefaults(fromPlist: "DefaultConfiguration")
        
        return configuration
        
    }()
    
    
    static func configure(expirationDuration: TimeInterval = 3600) {
        
        remoteConfig.fetch(withExpirationDuration: expirationDuration) { status, error in
            
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            
            print("Received Values from Remote Configuration!!")
            
            RemoteConfig.remoteConfig().activate() // to activate remote values otherwise we will use default values.
            
        }
    }
    
    
    static func value(forKey key: String) -> String {
        
        return remoteConfig.configValue(forKey: key).stringValue!
    }
}
