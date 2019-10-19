//
//  AppDelegate.swift
//  CleanMVVMSample
//
//  Created by Emmanuel Okwara on 16/10/2019.
//  Copyright © 2019 Emmanuel Okwara. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        AppAppearance.setupAppearance()
        
        return true
    }

}

