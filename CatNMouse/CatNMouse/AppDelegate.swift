//
//  AppDelegate.swift
//  dungeon
//
//  Created by Stephen Planck on 9/5/24.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = GameViewController()
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        return true
    }
}
