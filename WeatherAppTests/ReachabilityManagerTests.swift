//
//  ReachabilityManagerTests.swift
//  WeatherAppTests
//
//  Created by Sreekumar K on 02/04/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import XCTest
@testable import WeatherApp

class ReachabilityManagerTests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testIsConnected() {
        let isConnected = appDelegate.applicationCoordinator.reachabilityManager.isConnected()
        XCTAssertTrue(isConnected)
    }
}
