//
//  AppDelegate.swift
//  walletJob
//
//  Created by Alejandro Ramos Grifé on 27/03/2020.
//  Copyright © 2020 alexware. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        defer { self.window?.makeKeyAndVisible() }
        
        guard NSClassFromString("XCTest") == nil else {
            self.window?.rootViewController = UIViewController()
            return true
        }
        
        let startVC = WelcomeViewController()
        self.window?.rootViewController = startVC
        
        return true
    }
}
