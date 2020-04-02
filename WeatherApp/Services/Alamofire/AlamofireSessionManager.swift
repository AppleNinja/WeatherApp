//
//  AlamofireSessionManager.swift
//  WeatherApp
//
//  Created by Sreekumar K on 02/04/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import UIKit
import Alamofire

/// This class was designed and implemented to create Alamofire Session Manager
class AlamofireSessionManager: Alamofire.SessionManager {

    /// Shared Instance
    static let shared = AlamofireSessionManager()

    /// init
    private init() {
        var trustPolicyManager = [String: ServerTrustPolicy]()
        trustPolicyManager = [
            LinksUtils.getHostName(): .disableEvaluation
        ]
        let serverTrustPolicies = ServerTrustPolicyManager(policies: trustPolicyManager)
        
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest  = TimeInterval(Constants.apiCallTimeout)
        configuration.timeoutIntervalForResource = TimeInterval(Constants.apiCallTimeout)
        configuration.httpAdditionalHeaders      = Alamofire.SessionManager.defaultHTTPHeaders

        super.init(configuration: configuration, serverTrustPolicyManager: serverTrustPolicies)
    }
}
