//
//  AppDelegate.swift
//  test
//
//  Created by Tolga İskender on 15.03.2020.
//  Copyright © 2020 Tolga İskender. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        setupHotReload()
        setStartView()
        
        return true
    }

    
    func setupHotReload(){
        #if DEBUG
        Bundle(path: "/Applications/InjectionIII.app/Contents/Resources/iOSInjection.bundle")?.load()
        #endif
    }
    
    func setStartView() {
        let startVC = StartVC(nibName: "StartVC", bundle: nil)
        self.window?.rootViewController = startVC
    }

}

