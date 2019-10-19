//
//  Environment.swift
//  CleanMVVMSample
//
//  Created by Emmanuel Okwara on 17/10/2019.
//  Copyright © 2019 Emmanuel Okwara. All rights reserved.
//

import Foundation

public enum Environment {
    // MARK: - Keys
    enum Keys {
        enum Plist {
            static let rootURL = "ROOT_URL"
        }
    }
    
    
    // MARK: - Plist file
    private static let infoDictionary: [String: Any] = {
        guard let dict = Bundle.main.infoDictionary else {
            fatalError("Plist file not found")
        }
        return dict
    }()
    
    // MARK: - Plist Values
    static let rootURL: URL = {
        guard let rootURLString = Environment.infoDictionary[Keys.Plist.rootURL] as? String else {
            fatalError("Root URL not set in plist for this environment")
        }
        
        guard let url = URL(string: rootURLString) else {
          fatalError("Root URL is invalid")
        }
        return url
    }()
}
