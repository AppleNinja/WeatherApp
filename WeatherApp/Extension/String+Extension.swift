//
//  String+Extesnion.swift
//  WeatherApp
//
//  Created by Sreekumar K on 02/04/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import UIKit
import NaturalLanguage

extension String {
    
    /// Replace value
    /// - Parameters:
    ///   - target:String value to be replace by
    ///   - withString:replaced String value
    func replace(target: String, withString: String) -> String {
        return self.replacingOccurrences(of: target, with: withString, options: NSString.CompareOptions.literal, range: nil)
    }
    
    /// Trim  whitespaces
    func trim() -> String {
        return self.trimmingCharacters(in: NSCharacterSet.whitespaces)
    }
}
