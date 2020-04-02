//
//  ResponseError.swift
//  WeatherApp
//
//  Created by Sreekumar K on 02/04/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import UIKit

/// Model struct for error response
struct ErrorResponse: Codable {
    let cod: String?
    let message: String?
}
