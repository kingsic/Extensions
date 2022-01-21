//
//  Date+SGExtension.swift
//  Extensions
//
//  Created by kingsic on 2022/1/22.
//

import Foundation

extension Date {
    /// Get current timestamp
    var timeStamp: String {
        let timeInterval = self.timeIntervalSince1970
        let timeStamp = CLongLong(round(timeInterval))
        return "\(timeStamp)"
    }
    
    /// Get current timestamp
    var milliTimeStamp: String {
        let timeInterval = self.timeIntervalSince1970
        let millisecond = CLongLong(round(timeInterval*1000))
        return "\(millisecond)"
    }
}
