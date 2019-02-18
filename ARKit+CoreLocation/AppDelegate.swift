//
//  AppDelegate.swift
//  ARKit+CoreLocation
//
//  Created by Andrew Hart on 02/07/2017.
//  Copyright © 2017 Project Dent. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        UIApplication.shared.isIdleTimerDisabled = true

        self.window = UIWindow(frame: UIScreen.main.bounds)

        self.window!.makeKeyAndVisible()

        if #available(iOS 11.0, *) {
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController")
            self.window!.rootViewController = vc
        } else {
            self.window!.rootViewController = NotSupportedViewController()
        }

        return true
    }
}
