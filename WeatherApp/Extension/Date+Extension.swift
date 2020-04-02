//
//  Date+Extension.swift
//  WeatherApp
//
//  Created by Sreekumar K on 02/04/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import UIKit

extension Date {
    
    /// Convert date to String
    func returnDateString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = FormatDate.ddMMYYYY
        return dateFormatter.string(from: self)
    }
}
