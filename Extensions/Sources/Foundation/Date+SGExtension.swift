//
//  Date+SGExtension.swift
//  Extensions
//
//  Created by kingsic on 2022/1/22.
//

import Foundation

extension Date {    
    /// Get current timestamp
    ///
    /// - parameter milli: 是否以毫秒为单位，默认为：false
    ///
    /// - returns: current timestamp
    static func timeStamp(milli: Bool = false) -> String {
        let date = Date()
        var timeInterval = date.timeIntervalSince1970
        if milli {
            timeInterval = timeInterval * 1000
        }
        let millisecond = CLongLong(round(timeInterval))
        return "\(millisecond)"
    }
    
    
    /// Get current date
    ///
    /// - parameter dateFormat: Date format，默认为：yyyy-MM-dd HH:mm:ss
    ///
    /// - returns: Date after conversion
    static func date(dateFormat: String = "yyyy-MM-dd HH:mm:ss") -> (string: String, date: Date) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = dateFormat
        let dateString = dateFormatter.string(from: Date())
        let date = dateFormatter.date(from: dateString)!
        return (dateString, date)
    }
}
