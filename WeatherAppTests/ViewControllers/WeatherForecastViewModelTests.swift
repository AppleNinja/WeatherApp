//
//  WeatherForecastViewModelTests.swift
//  WeatherAppTests
//
//  Created by Sreekumar K on 02/04/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import XCTest
import UIKit
import RxSwift
import RxCocoa
import CoreLocation
@testable import WeatherApp

class WeatherForecastViewModelTests: XCTestCase {

    var viewModel: WeatherForecastViewModel!

    let disposeBag = DisposeBag()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        let viewController = AppConfig.shared.mainStoryboard.instantiateViewController(withIdentifier: "WeatherForecastViewController") as? WeatherForecastViewController ?? WeatherForecastViewController()
        let viewModel = WeatherForecastViewModel(viewController: viewController)
        viewController.viewModel = viewModel
        self.viewModel = viewModel

        XCTAssertNotNil(viewController)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
}

// MARK: - Test API Call
extension WeatherForecastViewModelTests {
    
    func testGetWeatherForecastSuccess() {
    
        let apiSuccessCityName = expectation(description: "get city name finished successfully")
        let apiSuccess         = expectation(description: "get weather finished successfully")

        viewModel.responseCity.skip(1).subscribe(onNext: { _ in
            apiSuccessCityName.fulfill()
        }).disposed(by: disposeBag)
        
        viewModel.responseList.skip(1).subscribe(onNext: { _ in
            apiSuccess.fulfill()
        }).disposed(by: disposeBag)
               
        let location = CLLocationCoordinate2DMake(34.0222, 35.646676)
        viewModel.getWeatherForecast(locationCoordinate: location)

        wait(for: [apiSuccess, apiSuccessCityName], timeout: 30)
    }
}
