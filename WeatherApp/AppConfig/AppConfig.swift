//
//  AppConfig.swift
//  WeatherApp
//
//  Created by Sreekumar K on 02/04/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import UIKit

class AppConfig: NSObject {
    /// Name of the storyboard
    var mainStoryboard = UIStoryboard()
    
    /// Shared instance
    static let shared = AppConfig()
    
    /// init
    private override init() {
        super.init()
    }
    
    /// default init value
    func initDefaultValue() {
       
        // init Language
        self.initGetLanguage()
        
        // init Storyboard
        self.initStoryboard()
    }

    /// init device language
    func initGetLanguage() {
        
        // get device language
        let deviceCurrentLanguage = NSLocale.current.languageCode ?? "en"
        
        // Save device language in keychain
        PersistencyManager.saveLanguage(value: deviceCurrentLanguage)
    }
    
    /// init storyboard
    func initStoryboard() {
        mainStoryboard = UIStoryboard.init(name: "Main", bundle: nil)
    }
}
