//
//  AppDelegate+Extension.swift
//  WeatherApp
//
//  Created by Sreekumar K on 02/04/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import UIKit
import SwiftMessages

/// This class was designed and implemented to show message builder
class SwiftMessagesBuilder: NSObject {
    
    /// Shared Instance
    static let shared = SwiftMessagesBuilder()
    
    /// init
    private override init() {
        super.init()
    }
    
    /// Show Error Message
    ///
    /// - Parameter message: message as string value
    func showErrorMessage(message: String) {
        
        let iconText = [""].randomElement()!

        let warning = MessageView.viewFromNib(layout: .cardView)
        warning.configureTheme(.error)
        warning.configureDropShadow()
        warning.button?.isHidden = true
        warning.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        warning.configureContent(title: LocalizableString.noInternetKey, body: "", iconText: iconText)

        var warningConfig = SwiftMessages.defaultConfig
        warningConfig.presentationContext = .window(windowLevel: UIWindow.Level.statusBar)

        SwiftMessages.show(config: warningConfig, view: warning)
    }
}
