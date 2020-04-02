//
//  WeatherModel.swift
//  WeatherApp
//
//  Created by Sreekumar K on 02/04/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import UIKit

/// Model struct for weather
struct WeatherModel: Codable {

    struct Result: Codable {
        let message: String?
        let name: String?
        let weather: [Weather]?
        let main: MainValue?
        let wind: WindValue?
    }

    struct Weather: Codable {
        let main: String?
        let description: String?
    }

    struct MainValue: Codable {
        let temp: Double?
        let temp_min: Double?
        let temp_max: Double?
    }

    struct WindValue: Codable {
        let speed: Double?
    }
}
