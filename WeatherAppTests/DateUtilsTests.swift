//
//  DateUtilsTests.swift
//  WeatherAppTests
//
//  Created by Sreekumar K on 02/04/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import XCTest
@testable import WeatherApp

class DateUtilsTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testReturnDateFromTimestamp() -> Date {
        let date = DateUtils.returnDateFromTimestamp(unixTimestamp: 1585822226)
        XCTAssertEqual("\(date)", "2020-04-02 10:10:26 +0000")
        return date
    }
    
    func testReturnDate() {
        let date = self.testReturnDateFromTimestamp()
        let dateString = date.returnDateString()
        XCTAssertEqual(dateString, "02-04-2020")
    }
    
    func testConvertServerDateToLocalTime() {
        let timeString = DateUtils.convertServerDateToLocalTime(value: "2020-04-02 10:10:26", toFormat: "hh:mm a")
        XCTAssertEqual(timeString, "02:10 PM")
    }
}
