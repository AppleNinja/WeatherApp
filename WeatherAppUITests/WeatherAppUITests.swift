//
//  WeatherAppUITests.swift
//  WeatherAppUITests
//
//  Created by Sreekumar K on 02/04/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import XCTest

class WeatherAppUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}

extension WeatherAppUITests {
    
    func testSearchCity() {
        
        let app = XCUIApplication()
        app.launch()
        
        app.tables.staticTexts["Search for Cities"].tap()
        app.textFields["e.g. London, Dubai"].tap()
        
        let dKey = app/*@START_MENU_TOKEN@*/.keys["d"]/*[[".keyboards.keys[\"d\"]",".keys[\"d\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        dKey.tap()
        
        let uKey = app/*@START_MENU_TOKEN@*/.keys["u"]/*[[".keyboards.keys[\"u\"]",".keys[\"u\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        uKey.tap()
        
        let bKey = app/*@START_MENU_TOKEN@*/.keys["b"]/*[[".keyboards.keys[\"b\"]",".keys[\"b\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        bKey.tap()
        
        let aKey = app/*@START_MENU_TOKEN@*/.keys["a"]/*[[".keyboards.keys[\"a\"]",".keys[\"a\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        aKey.tap()
        
        let iKey = app/*@START_MENU_TOKEN@*/.keys["i"]/*[[".keyboards.keys[\"i\"]",".keys[\"i\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        iKey.tap()

        app/*@START_MENU_TOKEN@*/.buttons["Search"]/*[[".keyboards",".buttons[\"search\"]",".buttons[\"Search\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.alerts["Notify"].scrollViews.otherElements.buttons["Ok"].tap()
        app.navigationBars["Search for Cities"].buttons["Back"].tap()
    }
    
    func testSearch3Cities() {
        
        let app = XCUIApplication()
        app.launch()
        
        app.tables.staticTexts["Search for Cities"].tap()
        app.textFields["e.g. London, Dubai"].tap()
        
        let kKey = app.keys["k"]
        kKey.tap()
        
        let oKey = app.keys["o"]
        oKey.tap()
        
        let cKey = app.keys["c"]
        cKey.tap()
        
        let hKey = app.keys["h"]
        hKey.tap()
        
        let iKey = app.keys["i"]
        iKey.tap()
        
        let moreKey = app/*@START_MENU_TOKEN@*/.keys["more"]/*[[".keyboards",".keys[\"numbers\"]",".keys[\"more\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
        moreKey.tap()
        
        let key = app/*@START_MENU_TOKEN@*/.keys[","]/*[[".keyboards.keys[\",\"]",".keys[\",\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key.tap()
        
        let spaceKey = app/*@START_MENU_TOKEN@*/.keys["space"]/*[[".keyboards.keys[\"space\"]",".keys[\"space\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        spaceKey.tap()
        
        let dKey = app/*@START_MENU_TOKEN@*/.keys["d"]/*[[".keyboards.keys[\"d\"]",".keys[\"d\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        dKey.tap()
        
        let uKey = app/*@START_MENU_TOKEN@*/.keys["u"]/*[[".keyboards.keys[\"u\"]",".keys[\"u\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        uKey.tap()
        
        let bKey = app.keys["b"]
        bKey.tap()
        
        let aKey = app.keys["a"]
        aKey.tap()
        iKey.tap()

        moreKey.tap()
        key.tap()
        spaceKey.tap()
        
        let lKey = app.keys["l"]
        lKey.tap()
        oKey.tap()
        let nKey = app.keys["n"]
        nKey.tap()
        oKey.tap()
        nKey.tap()
       
        app/*@START_MENU_TOKEN@*/.buttons["Search"]/*[[".keyboards",".buttons[\"search\"]",".buttons[\"Search\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["Search for Cities"].buttons["Back"].tap()
    }
    
    func testCurrentLocation() {
    
        let app = XCUIApplication()
        app.launch()
        app.tables.staticTexts["Current City"].tap()
    }
}
