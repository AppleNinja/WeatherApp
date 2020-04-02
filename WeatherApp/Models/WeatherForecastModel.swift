//
//  WeatherForecastModel.swift
//  WeatherApp
//
//  Created by Sreekumar K on 02/04/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import UIKit

/// Model struct for Weather Forecast
struct WeatherForecastModel: Codable {

    struct Result: Codable {
        let list: [Item]?
        let city: City?
    }
    
    struct Item: Codable {
        let dt: Int
        let main: WeatherModel.MainValue?
        let weather: [WeatherModel.Weather]?
        let dt_txt: String?
        let wind: WeatherModel.WindValue?
    }
    
    struct City: Codable {
        let name: String?
    }
}
