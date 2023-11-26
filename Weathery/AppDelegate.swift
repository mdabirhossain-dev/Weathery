//
// 
// FileName: AppDelegate.swift
// ProjectName: Weathery
//
// Created by MD ABIR HOSSAIN on 26-11-2023 at 7:20 AM
// Website: https://mdabirhossain.com/
//


import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemMint
        window?.rootViewController = WeatherViewController()
        
        return true
    }
    
    
}

