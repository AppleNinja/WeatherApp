//
//  PersistencyManagerTests.swift
//  WeatherAppTests
//
//  Created by Sreekumar K on 02/04/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import XCTest
@testable import WeatherApp

class PersistencyManagerTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testSaveLanguage() {
        
        // Given
        let lang = "ar"
        
        // When
        PersistencyManager.saveLanguage(value: lang)
        let language = PersistencyManager.getLanguage()

        // Then
        XCTAssertEqual(lang, language)
    }
    
    func testDeleteLanguage() {
        
        // Given
        let lang = "en"
        
        // When
        PersistencyManager.deleteLanguage()
        let language = PersistencyManager.getLanguage()

        // Then
        XCTAssertEqual(lang, language)
    }
}
